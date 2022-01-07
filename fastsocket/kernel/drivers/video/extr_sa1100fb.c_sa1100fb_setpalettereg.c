
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int var; } ;
struct sa1100fb_info {int palette_size; int* palette_cpu; TYPE_1__ fb; } ;
struct fb_info {int dummy; } ;


 int palette_pbs (int *) ;

__attribute__((used)) static int
sa1100fb_setpalettereg(u_int regno, u_int red, u_int green, u_int blue,
         u_int trans, struct fb_info *info)
{
 struct sa1100fb_info *fbi = (struct sa1100fb_info *)info;
 u_int val, ret = 1;

 if (regno < fbi->palette_size) {
  val = ((red >> 4) & 0xf00);
  val |= ((green >> 8) & 0x0f0);
  val |= ((blue >> 12) & 0x00f);

  if (regno == 0)
   val |= palette_pbs(&fbi->fb.var);

  fbi->palette_cpu[regno] = val;
  ret = 0;
 }
 return ret;
}
