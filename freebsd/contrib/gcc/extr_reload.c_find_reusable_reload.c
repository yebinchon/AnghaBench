
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ rtx ;
typedef enum reload_type { ____Placeholder_reload_type } reload_type ;
typedef enum reg_class { ____Placeholder_reg_class } reg_class ;
struct TYPE_2__ {int class; scalar_t__ reg_rtx; scalar_t__ in; scalar_t__ out; int opnum; int when_needed; } ;


 int GET_CODE (scalar_t__) ;
 scalar_t__ GET_RTX_CLASS (int ) ;
 scalar_t__ MATCHES (scalar_t__,scalar_t__) ;
 scalar_t__ MERGABLE_RELOADS (int,int ,int,int ) ;
 scalar_t__ REG_P (scalar_t__) ;
 scalar_t__ RTX_AUTOINC ;
 scalar_t__ SMALL_REGISTER_CLASSES ;
 scalar_t__ SMALL_REGISTER_CLASS_P (int) ;
 scalar_t__ TEST_HARD_REG_BIT (int ,int ) ;
 scalar_t__ XEXP (scalar_t__,int ) ;
 scalar_t__ earlyclobber_operand_p (scalar_t__) ;
 int n_reloads ;
 int * reg_class_contents ;
 scalar_t__ reg_class_subset_p (int,int) ;
 TYPE_1__* rld ;
 int true_regnum (scalar_t__) ;

__attribute__((used)) static int
find_reusable_reload (rtx *p_in, rtx out, enum reg_class class,
        enum reload_type type, int opnum, int dont_share)
{
  rtx in = *p_in;
  int i;



  if (earlyclobber_operand_p (out))
    return n_reloads;
  for (i = 0; i < n_reloads; i++)
    if ((reg_class_subset_p (class, rld[i].class)
  || reg_class_subset_p (rld[i].class, class))

 && (rld[i].reg_rtx == 0
     || TEST_HARD_REG_BIT (reg_class_contents[(int) class],
      true_regnum (rld[i].reg_rtx)))
 && ((in != 0 && MATCHES (rld[i].in, in) && ! dont_share
      && (out == 0 || rld[i].out == 0 || MATCHES (rld[i].out, out)))
     || (out != 0 && MATCHES (rld[i].out, out)
  && (in == 0 || rld[i].in == 0 || MATCHES (rld[i].in, in))))
 && (rld[i].out == 0 || ! earlyclobber_operand_p (rld[i].out))
 && (SMALL_REGISTER_CLASS_P (class) || SMALL_REGISTER_CLASSES)
 && MERGABLE_RELOADS (type, rld[i].when_needed, opnum, rld[i].opnum))
      return i;






  for (i = 0; i < n_reloads; i++)
    if ((reg_class_subset_p (class, rld[i].class)
  || reg_class_subset_p (rld[i].class, class))


 && (rld[i].reg_rtx == 0
     || TEST_HARD_REG_BIT (reg_class_contents[(int) class],
      true_regnum (rld[i].reg_rtx)))
 && out == 0 && rld[i].out == 0 && rld[i].in != 0
 && ((REG_P (in)
      && GET_RTX_CLASS (GET_CODE (rld[i].in)) == RTX_AUTOINC
      && MATCHES (XEXP (rld[i].in, 0), in))
     || (REG_P (rld[i].in)
  && GET_RTX_CLASS (GET_CODE (in)) == RTX_AUTOINC
  && MATCHES (XEXP (in, 0), rld[i].in)))
 && (rld[i].out == 0 || ! earlyclobber_operand_p (rld[i].out))
 && (SMALL_REGISTER_CLASS_P (class) || SMALL_REGISTER_CLASSES)
 && MERGABLE_RELOADS (type, rld[i].when_needed,
        opnum, rld[i].opnum))
      {


 if (REG_P (in))
   *p_in = rld[i].in;
 return i;
      }
  return n_reloads;
}
