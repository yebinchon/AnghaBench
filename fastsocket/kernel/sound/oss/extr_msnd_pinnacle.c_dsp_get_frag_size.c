
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fifosize; } ;


 TYPE_1__ dev ;

__attribute__((used)) static int dsp_get_frag_size(void)
{
 int size;
 size = dev.fifosize / 4;
 if (size > 32 * 1024)
  size = 32 * 1024;
 return size;
}
