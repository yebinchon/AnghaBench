
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value_data {TYPE_1__* e; } ;
typedef int rtx ;
struct TYPE_2__ {size_t mode; unsigned int next_regno; int oldest_regno; } ;


 scalar_t__ BYTES_BIG_ENDIAN ;
 size_t GET_MODE (int ) ;
 scalar_t__ GET_MODE_SIZE (size_t) ;
 unsigned int HARD_FRAME_POINTER_REGNUM ;
 unsigned int INVALID_REGNUM ;
 unsigned int REGNO (int ) ;
 unsigned int STACK_POINTER_REGNUM ;
 scalar_t__ UNITS_PER_WORD ;
 size_t VOIDmode ;
 scalar_t__ WORDS_BIG_ENDIAN ;
 scalar_t__* fixed_regs ;
 scalar_t__ frame_pointer_needed ;
 scalar_t__* global_regs ;
 unsigned int** hard_regno_nregs ;
 int set_value_regno (unsigned int,size_t,struct value_data*) ;
 int validate_value_data (struct value_data*) ;

__attribute__((used)) static void
copy_value (rtx dest, rtx src, struct value_data *vd)
{
  unsigned int dr = REGNO (dest);
  unsigned int sr = REGNO (src);
  unsigned int dn, sn;
  unsigned int i;



  if (sr == dr)
    return;



  if (dr == STACK_POINTER_REGNUM)
    return;


  if (frame_pointer_needed && dr == HARD_FRAME_POINTER_REGNUM)
    return;




  if (fixed_regs[dr] || global_regs[dr])
    return;


  dn = hard_regno_nregs[dr][GET_MODE (dest)];
  sn = hard_regno_nregs[sr][GET_MODE (dest)];
  if ((dr > sr && dr < sr + sn)
      || (sr > dr && sr < dr + dn))
    return;




  if (vd->e[sr].mode == VOIDmode)
    set_value_regno (sr, vd->e[dr].mode, vd);
  else if (sn < (unsigned int) hard_regno_nregs[sr][vd->e[sr].mode]
    && (GET_MODE_SIZE (vd->e[sr].mode) > UNITS_PER_WORD
        ? WORDS_BIG_ENDIAN : BYTES_BIG_ENDIAN))
    return;




  else if (sn > (unsigned int) hard_regno_nregs[sr][vd->e[sr].mode])
    return;



  vd->e[dr].oldest_regno = vd->e[sr].oldest_regno;

  for (i = sr; vd->e[i].next_regno != INVALID_REGNUM; i = vd->e[i].next_regno)
    continue;
  vd->e[i].next_regno = dr;




}
