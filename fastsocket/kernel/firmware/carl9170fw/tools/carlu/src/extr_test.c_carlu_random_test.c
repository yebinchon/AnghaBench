
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct carlu {int dummy; } ;
typedef int buf ;


 int AR9170_RAND_REG_NUM ;
 int ARRAY_SIZE (int*) ;
 int carlu_cmd_mem_watch (struct carlu*,int ,int,int*) ;
 int info (char*,...) ;

int carlu_random_test(struct carlu *ar)
{
 uint32_t buf[4096];
 int err, i;

 err = carlu_cmd_mem_watch(ar, AR9170_RAND_REG_NUM, sizeof(buf), buf);
 if (err)
  return err;

 for (i = 0; i < ARRAY_SIZE(buf); i++)
  info("%.2x %.2x ", buf[i] & 0xff, buf[i] >> 8);

 info("\n");
}
