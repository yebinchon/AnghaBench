
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_hashlimit_htable {scalar_t__ family; TYPE_1__* pde; int timer; } ;
struct TYPE_2__ {int name; } ;


 scalar_t__ NFPROTO_IPV4 ;
 int del_timer_sync (int *) ;
 int hashlimit_procdir4 ;
 int hashlimit_procdir6 ;
 int htable_selective_cleanup (struct xt_hashlimit_htable*,int ) ;
 int remove_proc_entry (int ,int ) ;
 int select_all ;
 int vfree (struct xt_hashlimit_htable*) ;

__attribute__((used)) static void htable_destroy(struct xt_hashlimit_htable *hinfo)
{
 del_timer_sync(&hinfo->timer);


 remove_proc_entry(hinfo->pde->name,
     hinfo->family == NFPROTO_IPV4 ? hashlimit_procdir4 :
           hashlimit_procdir6);
 htable_selective_cleanup(hinfo, select_all);
 vfree(hinfo);
}
