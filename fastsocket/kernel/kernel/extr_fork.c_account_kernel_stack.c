
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int dummy; } ;
struct thread_info {int dummy; } ;


 int NR_KERNEL_STACK ;
 int mod_zone_page_state (struct zone*,int ,int) ;
 struct zone* page_zone (int ) ;
 int virt_to_page (struct thread_info*) ;

__attribute__((used)) static void account_kernel_stack(struct thread_info *ti, int account)
{
 struct zone *zone = page_zone(virt_to_page(ti));

 mod_zone_page_state(zone, NR_KERNEL_STACK, account);
}
