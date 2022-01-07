
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value_data {int dummy; } ;
typedef scalar_t__ rtx ;
typedef enum reg_class { ____Placeholder_reg_class } reg_class ;


 int INSN_UID (scalar_t__) ;
 int REGNO (scalar_t__) ;
 scalar_t__ dump_file ;
 scalar_t__ find_oldest_value_reg (int,scalar_t__,struct value_data*) ;
 int fprintf (scalar_t__,char*,int,int,int) ;
 int validate_change (scalar_t__,scalar_t__*,scalar_t__,int) ;

__attribute__((used)) static bool
replace_oldest_value_reg (rtx *loc, enum reg_class cl, rtx insn,
     struct value_data *vd)
{
  rtx new = find_oldest_value_reg (cl, *loc, vd);
  if (new)
    {
      if (dump_file)
 fprintf (dump_file, "insn %u: replaced reg %u with %u\n",
   INSN_UID (insn), REGNO (*loc), REGNO (new));

      validate_change (insn, loc, new, 1);
      return 1;
    }
  return 0;
}
