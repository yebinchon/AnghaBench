
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct carlu {int dummy; } ;
typedef int msg ;
typedef int block ;
typedef int __le32 ;


 int CARL9170_CMD_WREG ;
 int carlusb_cmd (struct carlu*,int ,void*,int,void*,int) ;
 int cpu_to_le32 (int const) ;

int carlu_cmd_write_mem(struct carlu *ar, const uint32_t addr,
   const uint32_t val)
{
 int err;
 __le32 msg, block[2] = { cpu_to_le32(addr), cpu_to_le32(val) };

 err = carlusb_cmd(ar, CARL9170_CMD_WREG,
     (void *) &block, sizeof(block),
     (void *) &msg, sizeof(msg));
 return err;
}
