
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f_ecm {int notify_state; } ;


 int ECM_NOTIFY_CONNECT ;
 int ecm_do_notify (struct f_ecm*) ;

__attribute__((used)) static void ecm_notify(struct f_ecm *ecm)
{





 ecm->notify_state = ECM_NOTIFY_CONNECT;
 ecm_do_notify(ecm);
}
