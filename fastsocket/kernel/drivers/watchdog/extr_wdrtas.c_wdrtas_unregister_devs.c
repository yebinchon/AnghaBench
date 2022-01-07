
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ RTAS_UNKNOWN_SERVICE ;
 int misc_deregister (int *) ;
 int wdrtas_miscdev ;
 int wdrtas_tempdev ;
 scalar_t__ wdrtas_token_get_sensor_state ;

__attribute__((used)) static void wdrtas_unregister_devs(void)
{
 misc_deregister(&wdrtas_miscdev);
 if (wdrtas_token_get_sensor_state != RTAS_UNKNOWN_SERVICE)
  misc_deregister(&wdrtas_tempdev);
}
