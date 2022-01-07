
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_10__ {scalar_t__ nodekind; int* oid; } ;
typedef TYPE_1__ SmiNode ;


 scalar_t__ SMI_NODEKIND_NODE ;
 int assert (int) ;
 int pindent (size_t) ;
 int print_it (TYPE_1__*,size_t) ;
 int print_name (TYPE_1__*) ;
 int printf (char*,...) ;
 int save_node (TYPE_1__*) ;
 TYPE_1__* smiGetFirstChildNode (TYPE_1__*) ;
 TYPE_1__* smiGetNextChildNode (TYPE_1__*) ;

__attribute__((used)) static void
print_node(SmiNode *n, u_int level)
{
 assert (n->nodekind == SMI_NODEKIND_NODE);

 save_node(n);

 pindent(level);
 printf("(%u ", n->oid[level]);
 print_name(n);
 printf("\n");

 n = smiGetFirstChildNode(n);
 while (n != ((void*)0)) {
  print_it(n, level + 1);
  n = smiGetNextChildNode(n);
 }
 pindent(level);
 printf(")\n");
}
