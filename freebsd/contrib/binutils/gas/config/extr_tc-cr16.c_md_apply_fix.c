
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ valueT ;
typedef scalar_t__ segT ;
struct TYPE_5__ {int fx_where; int fx_r_type; int fx_done; int fx_pcrel; int * fx_addsy; scalar_t__ fx_offset; TYPE_1__* fx_frag; } ;
typedef TYPE_2__ fixS ;
struct TYPE_4__ {char* fr_literal; } ;






 scalar_t__ S_GET_SEGMENT (int *) ;
 int abort () ;
 int bfd_put_16 (int ,scalar_t__,char*) ;
 int bfd_put_32 (int ,scalar_t__,char*) ;
 int bfd_put_8 (int ,unsigned char,char*) ;
 int stdoutput ;

void
md_apply_fix (fixS *fixP, valueT *valP, segT seg)
{
  valueT val = * valP;
  char *buf = fixP->fx_frag->fr_literal + fixP->fx_where;
  fixP->fx_offset = 0;

  switch (fixP->fx_r_type)
    {
      case 128:
        bfd_put_8 (stdoutput, (unsigned char) val, buf);
        break;
      case 131:
        bfd_put_16 (stdoutput, val, buf);
        break;
      case 130:
        bfd_put_32 (stdoutput, val, buf);
        break;
      case 129:
        bfd_put_32 (stdoutput, val, buf);
        break;
      default:

        abort ();
        break;
    }

  fixP->fx_done = 0;

  if (fixP->fx_addsy == ((void*)0)
      && fixP->fx_pcrel == 0)
    fixP->fx_done = 1;

  if (fixP->fx_pcrel == 1
      && fixP->fx_addsy != ((void*)0)
      && S_GET_SEGMENT (fixP->fx_addsy) == seg)
    fixP->fx_done = 1;
}
