
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ fr_type; int fr_address; int fr_fix; char* fr_literal; int fr_var; TYPE_1__* fr_next; } ;
typedef TYPE_2__ fragS ;
struct TYPE_4__ {int fr_address; } ;


 int memcpy (char*,unsigned char const*,int) ;
 int memset (char*,int ,int) ;
 scalar_t__ rs_align_code ;

void
spu_handle_align (fragS *fragp)
{
  static const unsigned char nop_pattern[8] = {
    0x40, 0x20, 0x00, 0x00,
    0x00, 0x20, 0x00, 0x00,
  };

  int bytes;
  char *p;

  if (fragp->fr_type != rs_align_code)
    return;

  bytes = fragp->fr_next->fr_address - fragp->fr_address - fragp->fr_fix;
  p = fragp->fr_literal + fragp->fr_fix;

  if (bytes & 3)
    {
      int fix = bytes & 3;
      memset (p, 0, fix);
      p += fix;
      bytes -= fix;
      fragp->fr_fix += fix;
    }
  if (bytes & 4)
    {
      memcpy (p, &nop_pattern[4], 4);
      p += 4;
      bytes -= 4;
      fragp->fr_fix += 4;
    }

  memcpy (p, nop_pattern, 8);
  fragp->fr_var = 8;
}
