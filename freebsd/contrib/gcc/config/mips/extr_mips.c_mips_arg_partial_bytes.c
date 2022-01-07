
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct mips_arg_info {scalar_t__ stack_words; int reg_words; } ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int CUMULATIVE_ARGS ;


 int UNITS_PER_WORD ;
 int mips_arg_info (int *,int,int ,int,struct mips_arg_info*) ;

__attribute__((used)) static int
mips_arg_partial_bytes (CUMULATIVE_ARGS *cum,
   enum machine_mode mode, tree type, bool named)
{
  struct mips_arg_info info;

  mips_arg_info (cum, mode, type, named, &info);
  return info.stack_words > 0 ? info.reg_words * UNITS_PER_WORD : 0;
}
