
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int al; scalar_t__ ah; } ;
struct TYPE_5__ {int ax; } ;
struct TYPE_7__ {TYPE_2__ h; TYPE_1__ x; } ;
typedef TYPE_3__ __dpmi_regs ;


 int __dpmi_int (int,TYPE_3__*) ;
 int windows_major ;
 scalar_t__ windows_minor ;

__attribute__((used)) static void
go32_get_windows_version(void)
{
  __dpmi_regs r;

  r.x.ax = 0x1600;
  __dpmi_int(0x2f, &r);
  if (r.h.al > 2 && r.h.al != 0x80 && r.h.al != 0xff
      && (r.h.al > 3 || r.h.ah > 0))
    {
      windows_major = r.h.al;
      windows_minor = r.h.ah;
    }
  else
    windows_major = 0xff;
}
