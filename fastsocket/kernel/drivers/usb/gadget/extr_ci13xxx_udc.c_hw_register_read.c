
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {size_t size; } ;


 int hw_aread (unsigned int,int ) ;
 TYPE_1__ hw_bank ;

__attribute__((used)) static size_t hw_register_read(u32 *buf, size_t size)
{
 unsigned i;

 if (size > hw_bank.size)
  size = hw_bank.size;

 for (i = 0; i < size; i++)
  buf[i] = hw_aread(i * sizeof(u32), ~0);

 return size;
}
