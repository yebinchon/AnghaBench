
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct carlu {int dummy; } ;
typedef int msg ;
typedef int addr ;
struct TYPE_3__ {int member_0; } ;
typedef TYPE_1__ __le32 ;


 int CARL9170_CMD_RREG ;
 int carlusb_cmd (struct carlu*,int ,void*,int,void*,int) ;
 int cpu_to_le32 (int const) ;
 int le32_to_cpu (TYPE_1__) ;

int carlu_cmd_read_mem(struct carlu *ar, const uint32_t _addr,
         uint32_t *val)
{
 int err;
 __le32 msg, addr = { cpu_to_le32(_addr) };
 err = carlusb_cmd(ar, CARL9170_CMD_RREG, (void *) &addr, sizeof(addr),
     (void *) &msg, sizeof(msg));

 *val = le32_to_cpu(msg);
 return err;
}
