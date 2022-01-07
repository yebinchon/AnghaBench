
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ip_vs_service {TYPE_1__* scheduler; int num_dests; } ;
struct ip_vs_dest {int n_list; int flags; } ;
struct TYPE_2__ {int (* update_service ) (struct ip_vs_service*) ;} ;


 int IP_VS_DEST_F_AVAILABLE ;
 int list_del (int *) ;
 int stub1 (struct ip_vs_service*) ;

__attribute__((used)) static void __ip_vs_unlink_dest(struct ip_vs_service *svc,
    struct ip_vs_dest *dest,
    int svcupd)
{
 dest->flags &= ~IP_VS_DEST_F_AVAILABLE;




 list_del(&dest->n_list);
 svc->num_dests--;




 if (svcupd && svc->scheduler->update_service)
   svc->scheduler->update_service(svc);
}
