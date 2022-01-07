
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxu_hcd {int actions; } ;
typedef enum ehci_timer_action { ____Placeholder_ehci_timer_action } ehci_timer_action ;


 int clear_bit (int,int *) ;

__attribute__((used)) static inline void timer_action_done(struct oxu_hcd *oxu,
     enum ehci_timer_action action)
{
 clear_bit(action, &oxu->actions);
}
