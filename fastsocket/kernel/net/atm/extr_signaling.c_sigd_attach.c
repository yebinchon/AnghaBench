
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atm_vcc {int flags; int * dev; } ;


 int ATM_VF_META ;
 int ATM_VF_READY ;
 int EADDRINUSE ;
 int pr_debug (char*) ;
 int set_bit (int ,int *) ;
 struct atm_vcc* sigd ;
 int sigd_dev ;
 int sigd_sleep ;
 int sk_atm (struct atm_vcc*) ;
 int vcc_insert_socket (int ) ;
 int wake_up (int *) ;

int sigd_attach(struct atm_vcc *vcc)
{
 if (sigd) return -EADDRINUSE;
 pr_debug("sigd_attach\n");
 sigd = vcc;
 vcc->dev = &sigd_dev;
 vcc_insert_socket(sk_atm(vcc));
 set_bit(ATM_VF_META,&vcc->flags);
 set_bit(ATM_VF_READY,&vcc->flags);



 return 0;
}
