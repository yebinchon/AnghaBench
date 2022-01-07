
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct carlu {int dummy; } ;
typedef int data ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int INFO ;
 scalar_t__ IS_ERR_OR_NULL (struct carlu*) ;
 int PTR_ERR (struct carlu*) ;
 int carlu_cmd_mem_dump (struct carlu*,int ,int,int **) ;
 int carlu_exit () ;
 int carlu_init () ;
 int carlusb_close (struct carlu*) ;
 struct carlu* carlusb_probe () ;
 int print_hex_dump_bytes (int ,char*,int *,int) ;

__attribute__((used)) static int carlu_dump_eeprom(void)
{
 struct carlu *carl = ((void*)0);
 uint8_t data[8192] = { 0 };
 int err;

 err = carlu_init();
 if (err)
  goto out;

 carl = carlusb_probe();
 if (IS_ERR_OR_NULL(carl)) {
  err = PTR_ERR(carl);
  goto out;
 }

 err = carlu_cmd_mem_dump(carl, 0, sizeof(data), &data);
 if (err)
  goto out_close;

 print_hex_dump_bytes(INFO, "EEPROM:", data, sizeof(data));

out_close:
 carlusb_close(carl);

out:
 carlu_exit();
 return err ? EXIT_FAILURE : EXIT_SUCCESS;
}
