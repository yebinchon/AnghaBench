
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct carlu {int dummy; } ;


 int carlu_cmd_reboot (struct carlu*) ;
 int carlusb_destroy (struct carlu*) ;
 int carlusb_free_driver (struct carlu*) ;

void carlusb_close(struct carlu *ar)
{
 carlu_cmd_reboot(ar);

 carlusb_destroy(ar);
 carlusb_free_driver(ar);
}
