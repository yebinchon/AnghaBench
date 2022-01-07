
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* left_levels; int* right_levels; } ;


 int EINVAL ;







 TYPE_1__ dev ;

__attribute__((used)) static int mixer_get(int d)
{
 if (d > 31)
  return -EINVAL;

 switch (d) {
 case 128:
 case 130:
 case 133:
 case 134:
 case 132:

 case 131:
 case 129:

  return (dev.left_levels[d] >> 8) * 100 / 0xff |
   (((dev.right_levels[d] >> 8) * 100 / 0xff) << 8);
 default:
  return 0;
 }
}
