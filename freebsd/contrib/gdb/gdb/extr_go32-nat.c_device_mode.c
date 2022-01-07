
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ax; int bx; int flags; int dx; } ;
struct TYPE_5__ {TYPE_1__ x; } ;
typedef TYPE_2__ __dpmi_regs ;


 int __dpmi_int (int,TYPE_2__*) ;

__attribute__((used)) static int
device_mode (int fd, int raw_p)
{
  int oldmode, newmode;
  __dpmi_regs regs;

  regs.x.ax = 0x4400;
  regs.x.bx = fd;
  __dpmi_int (0x21, &regs);
  if (regs.x.flags & 1)
    return -1;
  newmode = oldmode = regs.x.dx;

  if (raw_p)
    newmode |= 0x20;
  else
    newmode &= ~0x20;

  if (oldmode & 0x80)
  {
    regs.x.ax = 0x4401;
    regs.x.bx = fd;
    regs.x.dx = newmode & 0xff;
    __dpmi_int (0x21, &regs);
    if (regs.x.flags & 1)
      return -1;
  }
  return (oldmode & 0x20) == 0x20;
}
