
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmac_keywest {int dummy; } ;


 int i2c_del_driver (int *) ;
 struct pmac_keywest* keywest_ctx ;
 int keywest_driver ;

void snd_pmac_keywest_cleanup(struct pmac_keywest *i2c)
{
 if (keywest_ctx && keywest_ctx == i2c) {
  i2c_del_driver(&keywest_driver);
  keywest_ctx = ((void*)0);
 }
}
