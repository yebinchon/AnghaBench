
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tree ;
typedef int rtx ;
struct TYPE_5__ {int words; int named; scalar_t__ use_stack; scalar_t__ intoffset; } ;
typedef int HOST_WIDE_INT ;
typedef TYPE_1__ CUMULATIVE_ARGS ;


 int BITS_PER_UNIT ;
 int BITS_PER_WORD ;
 int BLKmode ;
 int FIRST_PSEUDO_REGISTER ;
 int NULL_RTX ;
 int TYPE_ALIGN (int ) ;
 int VOIDmode ;
 int const0_rtx ;
 int gen_rtvec_v (int,int *) ;
 int gen_rtx_EXPR_LIST (int ,int ,int ) ;
 int gen_rtx_PARALLEL (int ,int ) ;
 int int_size_in_bytes (int ) ;
 int rs6000_darwin64_record_arg_flush (TYPE_1__*,int,int *,int*) ;
 int rs6000_darwin64_record_arg_recurse (TYPE_1__*,int ,int ,int *,int*) ;

__attribute__((used)) static rtx
rs6000_darwin64_record_arg (CUMULATIVE_ARGS *orig_cum, tree type,
       int named, bool retval)
{
  rtx rvec[FIRST_PSEUDO_REGISTER];
  int k = 1, kbase = 1;
  HOST_WIDE_INT typesize = int_size_in_bytes (type);

  CUMULATIVE_ARGS copy_cum = *orig_cum;
  CUMULATIVE_ARGS *cum = &copy_cum;


  if (!retval && TYPE_ALIGN (type) >= 2 * BITS_PER_WORD
      && (cum->words % 2) != 0)
    cum->words++;

  cum->intoffset = 0;
  cum->use_stack = 0;
  cum->named = named;





  rs6000_darwin64_record_arg_recurse (cum, type, 0, rvec, &k);
  rs6000_darwin64_record_arg_flush (cum, typesize * BITS_PER_UNIT, rvec, &k);





  if (cum->use_stack)
    {
      if (retval)
 return NULL_RTX;
      kbase = 0;
      rvec[0] = gen_rtx_EXPR_LIST (VOIDmode, NULL_RTX, const0_rtx);
    }
  if (k > 1 || cum->use_stack)
    return gen_rtx_PARALLEL (BLKmode, gen_rtvec_v (k - kbase, &rvec[kbase]));
  else
    return NULL_RTX;
}
