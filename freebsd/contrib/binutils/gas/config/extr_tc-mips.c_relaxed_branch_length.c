
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int offsetT ;
struct TYPE_4__ {int fr_offset; int fr_subtype; scalar_t__ fr_fix; scalar_t__ fr_address; int fr_symbol; } ;
typedef TYPE_1__ fragS ;
typedef scalar_t__ bfd_boolean ;
typedef int asection ;
typedef scalar_t__ addressT ;
struct TYPE_5__ {scalar_t__ isa; } ;


 scalar_t__ FALSE ;
 scalar_t__ ISA_MIPS1 ;
 scalar_t__ NO_PIC ;
 int RELAX_BRANCH_ENCODE (int ,int,int ,scalar_t__) ;
 int RELAX_BRANCH_LIKELY (int ) ;
 int RELAX_BRANCH_LINK (int ) ;
 scalar_t__ RELAX_BRANCH_TOOFAR (int ) ;
 int RELAX_BRANCH_UNCOND (int ) ;
 int * S_GET_SEGMENT (int ) ;
 int S_GET_VALUE (int ) ;
 scalar_t__ S_IS_DEFINED (int ) ;
 scalar_t__ TRUE ;
 TYPE_3__ mips_opts ;
 scalar_t__ mips_pic ;

__attribute__((used)) static int
relaxed_branch_length (fragS *fragp, asection *sec, int update)
{
  bfd_boolean toofar;
  int length;

  if (fragp
      && S_IS_DEFINED (fragp->fr_symbol)
      && sec == S_GET_SEGMENT (fragp->fr_symbol))
    {
      addressT addr;
      offsetT val;

      val = S_GET_VALUE (fragp->fr_symbol) + fragp->fr_offset;

      addr = fragp->fr_address + fragp->fr_fix + 4;

      val -= addr;

      toofar = val < - (0x8000 << 2) || val >= (0x8000 << 2);
    }
  else if (fragp)



    toofar = FALSE;
  else
    toofar = TRUE;

  if (fragp && update && toofar != RELAX_BRANCH_TOOFAR (fragp->fr_subtype))
    fragp->fr_subtype
      = RELAX_BRANCH_ENCODE (RELAX_BRANCH_UNCOND (fragp->fr_subtype),
        RELAX_BRANCH_LIKELY (fragp->fr_subtype),
        RELAX_BRANCH_LINK (fragp->fr_subtype),
        toofar);

  length = 4;
  if (toofar)
    {
      if (fragp ? RELAX_BRANCH_LIKELY (fragp->fr_subtype) : (update > 0))
 length += 8;

      if (mips_pic != NO_PIC)
 {

   length += 8;
   if (mips_opts.isa == ISA_MIPS1)

     length += 4;
 }


      if (fragp ? !RELAX_BRANCH_UNCOND (fragp->fr_subtype) : (update >= 0))
 length += 8;
    }

  return length;
}
