
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct fc_lport {int dummy; } ;




 int NOTIFY_DONE ;
 int ft_lport_add (struct fc_lport*,int *) ;
 int ft_lport_del (struct fc_lport*,int *) ;

int ft_lport_notify(struct notifier_block *nb, unsigned long event, void *arg)
{
 struct fc_lport *lport = arg;

 switch (event) {
 case 129:
  ft_lport_add(lport, ((void*)0));
  break;
 case 128:
  ft_lport_del(lport, ((void*)0));
  break;
 }
 return NOTIFY_DONE;
}
