
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int size; } ;


 int EINVAL ;
 int hw_awrite (int,int ,int ) ;
 TYPE_1__ hw_bank ;

__attribute__((used)) static int hw_register_write(u16 addr, u32 data)
{

 addr /= sizeof(u32);

 if (addr >= hw_bank.size)
  return -EINVAL;


 addr *= sizeof(u32);

 hw_awrite(addr, ~0, data);
 return 0;
}
