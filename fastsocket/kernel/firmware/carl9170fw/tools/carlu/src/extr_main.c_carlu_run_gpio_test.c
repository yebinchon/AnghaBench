
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct carlu {int dummy; } ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 scalar_t__ IS_ERR_OR_NULL (struct carlu*) ;
 int PTR_ERR (struct carlu*) ;
 int carlu_exit () ;
 int carlu_gpio_test (struct carlu*) ;
 int carlu_init () ;
 int carlusb_close (struct carlu*) ;
 struct carlu* carlusb_probe () ;

__attribute__((used)) static int carlu_run_gpio_test(void)
{
 struct carlu *carl = ((void*)0);
 int err;

 err = carlu_init();
 if (err)
  goto out;

 carl = carlusb_probe();
 if (IS_ERR_OR_NULL(carl)) {
  err = PTR_ERR(carl);
  goto out;
 }

 err = carlu_gpio_test(carl);
 if (err)
  goto out_close;

out_close:
 carlusb_close(carl);

out:
 carlu_exit();
 return err ? EXIT_FAILURE : EXIT_SUCCESS;
}
