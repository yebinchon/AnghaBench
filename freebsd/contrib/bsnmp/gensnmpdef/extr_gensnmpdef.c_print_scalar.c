
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_8__ {scalar_t__ nodekind; int* oid; char* name; int access; } ;
typedef TYPE_1__ SmiNode ;


 scalar_t__ SMI_NODEKIND_SCALAR ;
 int assert (int) ;
 int pindent (size_t) ;
 int print_access (int ) ;
 int print_name (TYPE_1__*) ;
 int print_type (TYPE_1__*) ;
 int printf (char*,...) ;
 int save_node (TYPE_1__*) ;
 TYPE_1__* smiGetParentNode (TYPE_1__*) ;

__attribute__((used)) static void
print_scalar(SmiNode *n, u_int level)
{
 SmiNode *p;

 assert (n->nodekind == SMI_NODEKIND_SCALAR);

 save_node(n);

 pindent(level);
 printf("(%u ", n->oid[level]);
 print_name(n);
 printf(" ");
 print_type(n);


 p = smiGetParentNode(n);
 printf(" op_%s", p->name);

 print_access(n->access);

 printf(")\n");
}
