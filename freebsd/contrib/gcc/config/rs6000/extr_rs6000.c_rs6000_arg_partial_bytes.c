
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_5__ {scalar_t__ nargs_prototype; scalar_t__ fregno; int words; } ;
typedef TYPE_1__ CUMULATIVE_ARGS ;


 scalar_t__ ABI_AIX ;
 scalar_t__ ABI_V4 ;
 int BLKmode ;
 scalar_t__ DEFAULT_ABI ;
 scalar_t__ FP_ARG_MAX_REG ;
 int GET_MODE_SIZE (int) ;
 int GP_ARG_NUM_REG ;
 scalar_t__ RECORD_TYPE ;
 scalar_t__ TARGET_32BIT ;
 scalar_t__ TARGET_DEBUG_ARG ;
 scalar_t__ TARGET_XL_COMPAT ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ USE_ALTIVEC_FOR_ARG_P (TYPE_1__*,int,scalar_t__,int) ;
 scalar_t__ USE_FP_FOR_ARG_P (TYPE_1__*,int,scalar_t__) ;
 int fprintf (int ,char*,int) ;
 scalar_t__ int_size_in_bytes (scalar_t__) ;
 int rs6000_arg_size (int,scalar_t__) ;
 scalar_t__ rs6000_darwin64_abi ;
 int rs6000_parm_start (int,scalar_t__,int ) ;
 int stderr ;

__attribute__((used)) static int
rs6000_arg_partial_bytes (CUMULATIVE_ARGS *cum, enum machine_mode mode,
     tree type, bool named)
{
  int ret = 0;
  int align_words;

  if (DEFAULT_ABI == ABI_V4)
    return 0;

  if (USE_ALTIVEC_FOR_ARG_P (cum, mode, type, named)
      && cum->nargs_prototype >= 0)
    return 0;


  if (rs6000_darwin64_abi && mode == BLKmode
      && TREE_CODE (type) == RECORD_TYPE
      && int_size_in_bytes (type) > 0)
    return 0;

  align_words = rs6000_parm_start (mode, type, cum->words);

  if (USE_FP_FOR_ARG_P (cum, mode, type))
    {




      if (type
   && (cum->nargs_prototype <= 0
       || (DEFAULT_ABI == ABI_AIX
    && TARGET_XL_COMPAT
    && align_words >= GP_ARG_NUM_REG)))
 return 0;
      else if (cum->fregno + ((GET_MODE_SIZE (mode) + 7) >> 3)
        > FP_ARG_MAX_REG + 1)
 ret = (FP_ARG_MAX_REG + 1 - cum->fregno) * 8;
      else if (cum->nargs_prototype >= 0)
 return 0;
    }

  if (align_words < GP_ARG_NUM_REG
      && GP_ARG_NUM_REG < align_words + rs6000_arg_size (mode, type))
    ret = (GP_ARG_NUM_REG - align_words) * (TARGET_32BIT ? 4 : 8);

  if (ret != 0 && TARGET_DEBUG_ARG)
    fprintf (stderr, "rs6000_arg_partial_bytes: %d\n", ret);

  return ret;
}
