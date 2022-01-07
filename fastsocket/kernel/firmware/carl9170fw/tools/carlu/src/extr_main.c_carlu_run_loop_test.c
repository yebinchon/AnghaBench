
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct carlu {int dummy; } ;


 int AR9170_MAC_REG_BCN_PERIOD ;
 int AR9170_MAC_REG_PRETBTT ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 scalar_t__ IS_ERR_OR_NULL (struct carlu*) ;
 int PTR_ERR (struct carlu*) ;
 int carlu_cmd_write_mem (struct carlu*,int ,int) ;
 int carlu_init () ;
 int carlu_loopback_test (struct carlu*,int,int,int,int) ;
 int carlusb_close (struct carlu*) ;
 struct carlu* carlusb_probe () ;

__attribute__((used)) static int carlu_run_loop_test(void)
{
 struct carlu *carl;
 int err;

 err = carlu_init();
 if (err)
  return EXIT_FAILURE;

 carl = carlusb_probe();
 if (IS_ERR_OR_NULL(carl)) {
  err = PTR_ERR(carl);
  goto out;
 }

 carlu_cmd_write_mem(carl, AR9170_MAC_REG_BCN_PERIOD, 0xFFFFFFFF);
 carlu_cmd_write_mem(carl, AR9170_MAC_REG_PRETBTT, 0xFFFFFFFF);


 carlu_loopback_test(carl, 9000, 1000, 1566, 1566);
 carlusb_close(carl);

out:
 return err ? EXIT_FAILURE : EXIT_SUCCESS;
}
