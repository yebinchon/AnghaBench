
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct control_runtime {int ovol_updated; scalar_t__* output_vol; TYPE_1__* chip; } ;
struct comm_runtime {int (* write8 ) (struct comm_runtime*,int,int,scalar_t__) ;} ;
struct TYPE_2__ {struct comm_runtime* comm; } ;


 int stub1 (struct comm_runtime*,int,int,scalar_t__) ;

__attribute__((used)) static void usb6fire_control_output_vol_update(struct control_runtime *rt)
{
 struct comm_runtime *comm_rt = rt->chip->comm;
 int i;

 if (comm_rt)
  for (i = 0; i < 6; i++)
   if (!(rt->ovol_updated & (1 << i))) {
    comm_rt->write8(comm_rt, 0x12, 0x0f + i,
     180 - rt->output_vol[i]);
    rt->ovol_updated |= 1 << i;
   }
}
