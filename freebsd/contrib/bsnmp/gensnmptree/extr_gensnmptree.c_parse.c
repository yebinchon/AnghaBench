
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_10__ {int subs; } ;
struct TYPE_9__ {scalar_t__ index; char** subtypes; int subs; void* func; } ;
struct TYPE_8__ {char* subtype; scalar_t__ syntax; } ;
struct TYPE_7__ {char* subtype; scalar_t__ syntax; void* func; } ;
struct TYPE_11__ {TYPE_4__ tree; TYPE_3__ entry; TYPE_2__ column; TYPE_1__ leaf; } ;
struct node {scalar_t__ flags; TYPE_5__ u; int type; void* name; scalar_t__ id; int lno; } ;
typedef enum tok { ____Placeholder_tok } tok ;
typedef scalar_t__ asn_subid_t ;
struct TYPE_12__ {int lno; } ;


 scalar_t__ ASN_MAXID ;
 int NODE_COLUMN ;
 int NODE_ENTRY ;
 int NODE_LEAF ;
 int NODE_TREE ;
 scalar_t__ SNMP_INDEXES_MAX ;
 scalar_t__ SNMP_INDEX_SHIFT ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct node*,int ) ;
 int TOK_ACCESS ;
 int TOK_BITS ;
 int TOK_DEFTYPE ;
 int TOK_ENUM ;
 int TOK_NUM ;
 int TOK_STR ;
 int TOK_TYPE ;
 int gettoken () ;
 TYPE_6__* input ;
 int link ;
 scalar_t__ parse_type (int*,int *,void*,char**) ;
 int report (char*,...) ;
 void* savetok () ;
 scalar_t__ val ;
 struct node* xalloc (int) ;

__attribute__((used)) static struct node *
parse(enum tok tok)
{
 struct node *node;
 struct node *sub;
 u_int index_count;

 node = xalloc(sizeof(struct node));
 node->lno = input->lno;
 node->flags = 0;

 if (tok != '(')
  report("'(' expected at begin of node");
 if (gettoken() != TOK_NUM)
  report("node id expected after opening '('");
 if (val > ASN_MAXID)
  report("subid too large '%lu'", val);
 node->id = (asn_subid_t)val;
 if (gettoken() != TOK_STR)
  report("node name expected after '(' ID");
 node->name = savetok();

 if ((tok = gettoken()) == TOK_TYPE || tok == TOK_DEFTYPE ||
     tok == TOK_ENUM || tok == TOK_BITS) {

  char *subtype;
  u_int syntax = parse_type(&tok, ((void*)0), node->name, &subtype);

  if (tok == TOK_STR) {

   node->type = NODE_LEAF;
   node->u.leaf.func = savetok();
   node->u.leaf.syntax = syntax;
   node->u.leaf.subtype = subtype;
   tok = gettoken();
  } else {

   node->type = NODE_COLUMN;
   node->u.column.syntax = syntax;
   node->u.column.subtype = subtype;
  }

  while (tok != ')') {
   if (tok != TOK_ACCESS)
    report("access keyword or ')' expected");
   node->flags |= (u_int)val;
   tok = gettoken();
  }

 } else if (tok == ':') {

  node->type = NODE_ENTRY;
  TAILQ_INIT(&node->u.entry.subs);

  index_count = 0;
  node->u.entry.index = 0;
  tok = gettoken();
  while (tok == TOK_TYPE || tok == TOK_DEFTYPE ||
      tok == TOK_ENUM || tok == TOK_BITS) {
   char *subtype;
   u_int syntax = parse_type(&tok, ((void*)0), node->name,
       &subtype);
   if (index_count == SNMP_INDEXES_MAX)
    report("too many table indexes");
   node->u.entry.subtypes[index_count++] = subtype;
   node->u.entry.index |=
       syntax << (SNMP_INDEX_SHIFT * index_count);
  }
  node->u.entry.index |= index_count;
  if (index_count == 0)
   report("need at least one index");
  if (tok != TOK_STR)
   report("function name expected");

  node->u.entry.func = savetok();

  tok = gettoken();

  while (tok != ')') {
   sub = parse(tok);
   TAILQ_INSERT_TAIL(&node->u.entry.subs, sub, link);
   tok = gettoken();
  }

 } else {

  node->type = NODE_TREE;
  TAILQ_INIT(&node->u.tree.subs);

  while (tok != ')') {
   sub = parse(tok);
   TAILQ_INSERT_TAIL(&node->u.tree.subs, sub, link);
   tok = gettoken();
  }
 }
 return (node);
}
