
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ fr_type; int fr_address; int fr_fix; char* fr_literal; int fr_var; TYPE_1__* fr_next; } ;
typedef TYPE_2__ fragS ;
struct TYPE_4__ {int fr_address; } ;


 int memcpy (char*,char const*,int) ;
 int memset (char*,int ,int) ;
 scalar_t__ rs_align_code ;

void
alpha_handle_align (fragS *fragp)
{
  static char const unop[4] = { 0x00, 0x00, 0xfe, 0x2f };
  static char const nopunop[8] =
  {
    0x1f, 0x04, 0xff, 0x47,
    0x00, 0x00, 0xfe, 0x2f
  };

  int bytes, fix;
  char *p;

  if (fragp->fr_type != rs_align_code)
    return;

  bytes = fragp->fr_next->fr_address - fragp->fr_address - fragp->fr_fix;
  p = fragp->fr_literal + fragp->fr_fix;
  fix = 0;

  if (bytes & 3)
    {
      fix = bytes & 3;
      memset (p, 0, fix);
      p += fix;
      bytes -= fix;
    }

  if (bytes & 4)
    {
      memcpy (p, unop, 4);
      p += 4;
      bytes -= 4;
      fix += 4;
    }

  memcpy (p, nopunop, 8);

  fragp->fr_fix += fix;
  fragp->fr_var = 8;
}
