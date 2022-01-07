
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wip_nmerged; int * wip_td; } ;
typedef TYPE_1__ wip_t ;
typedef int tdata_t ;


 int debug (int,char*,int ,void*,void*) ;
 int merge_into_master (int *,int *,int *,int ) ;
 int pthread_self () ;
 int tdata_free (int *) ;

__attribute__((used)) static void
wip_add_work(wip_t *slot, tdata_t *pow)
{
 if (slot->wip_td == ((void*)0)) {
  slot->wip_td = pow;
  slot->wip_nmerged = 1;
 } else {
  debug(2, "%d: merging %p into %p\n", pthread_self(),
      (void *)pow, (void *)slot->wip_td);

  merge_into_master(pow, slot->wip_td, ((void*)0), 0);
  tdata_free(pow);

  slot->wip_nmerged++;
 }
}
