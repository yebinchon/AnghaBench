
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {int pals; } ;


 int INIT_LIST_HEAD (int *) ;

void uwb_rc_pal_init(struct uwb_rc *rc)
{
 INIT_LIST_HEAD(&rc->pals);
}
