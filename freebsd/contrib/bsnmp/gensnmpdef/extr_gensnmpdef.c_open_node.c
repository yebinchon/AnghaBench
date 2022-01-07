
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_6__ {int oidlen; scalar_t__* oid; } ;
typedef TYPE_1__ SmiNode ;


 int close_node (int,int) ;
 int cut ;
 int pindent (int) ;
 int print_name (TYPE_1__*) ;
 int printf (char*,...) ;
 TYPE_1__* smiGetNodeByOID (int,scalar_t__*) ;

__attribute__((used)) static u_int
open_node(const SmiNode *n, u_int level, SmiNode **last)
{
 SmiNode *n1;
 u_int i;

 if (*last != ((void*)0)) {
  for (i = 0; i < (*last)->oidlen - 1; i++) {
   if (i >= n->oidlen) {
    level = close_node((*last)->oidlen -
        n->oidlen, level);
    break;
   }
   if ((*last)->oid[i] != n->oid[i])
    break;
  }
  if (i < (*last)->oidlen - 1)
   level = close_node((*last)->oidlen - 1 - i,
       level - 1) + 1;
 }

 while (level < n->oidlen - 1) {
  if (level >= cut) {
   n1 = smiGetNodeByOID(level + 1, n->oid);
   if (n1 == ((void*)0))
    continue;
   pindent(level);
   printf("(%u", n->oid[level]);
   printf(" ");
   print_name(n1);
   printf("\n");
  }
  level++;
 }
 return (level);
}
