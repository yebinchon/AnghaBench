
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int t_id; struct TYPE_7__* t_next; int * t_name; struct TYPE_7__* t_hash; } ;
typedef TYPE_1__ tdesc_t ;


 int HASH (int) ;
 int compute_sum (int *) ;
 TYPE_1__** hash_table ;
 TYPE_1__* lookup (int) ;
 TYPE_1__* lookupname (int *) ;
 TYPE_1__** name_table ;
 int terminate (char*) ;

__attribute__((used)) static void
addhash(tdesc_t *tdp, int num)
{
 int hash = HASH(num);
 tdesc_t *ttdp;
 char added_num = 0, added_name = 0;





 ttdp = lookup(num);

 if (ttdp == ((void*)0)) {
  tdp->t_id = num;
  tdp->t_hash = hash_table[hash];
  hash_table[hash] = tdp;
  added_num = 1;
 }

 if (tdp->t_name != ((void*)0)) {
  ttdp = lookupname(tdp->t_name);
  if (ttdp == ((void*)0)) {
   hash = compute_sum(tdp->t_name);
   tdp->t_next = name_table[hash];
   name_table[hash] = tdp;
   added_name = 1;
  }
 }
 if (!added_num && !added_name) {
  terminate("stabs: broken hash\n");
 }
}
