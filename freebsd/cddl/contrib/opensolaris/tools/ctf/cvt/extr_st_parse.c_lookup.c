
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int t_id; struct TYPE_4__* t_hash; } ;
typedef TYPE_1__ tdesc_t ;


 int HASH (int) ;
 TYPE_1__** hash_table ;

tdesc_t *
lookup(int h)
{
 int bucket = HASH(h);
 tdesc_t *tdp = hash_table[bucket];

 while (tdp != ((void*)0)) {
  if (tdp->t_id == h)
   return (tdp);
  tdp = tdp->t_hash;
 }
 return (((void*)0));
}
