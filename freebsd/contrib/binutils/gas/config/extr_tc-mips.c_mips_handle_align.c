
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ fr_type; int fr_address; int fr_fix; char* fr_literal; int fr_var; TYPE_1__* fr_next; } ;
typedef TYPE_2__ fragS ;
struct TYPE_7__ {scalar_t__ mips16; } ;
struct TYPE_5__ {int fr_address; } ;


 int memcpy (char*,unsigned char const*,int) ;
 TYPE_3__ mips_opts ;
 scalar_t__ rs_align_code ;
 scalar_t__ target_big_endian ;

void
mips_handle_align (fragS *fragp)
{
  if (fragp->fr_type != rs_align_code)
    return;

  if (mips_opts.mips16)
    {
      static const unsigned char be_nop[] = { 0x65, 0x00 };
      static const unsigned char le_nop[] = { 0x00, 0x65 };

      int bytes;
      char *p;

      bytes = fragp->fr_next->fr_address - fragp->fr_address - fragp->fr_fix;
      p = fragp->fr_literal + fragp->fr_fix;

      if (bytes & 1)
 {
   *p++ = 0;
   fragp->fr_fix++;
 }

      memcpy (p, (target_big_endian ? be_nop : le_nop), 2);
      fragp->fr_var = 2;
    }


}
