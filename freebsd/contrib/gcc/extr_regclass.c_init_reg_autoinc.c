
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum reg_class { ____Placeholder_reg_class } reg_class ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int REGNO ;


 int FIRST_PSEUDO_REGISTER ;
 scalar_t__ HARD_REGNO_MODE_OK (int,int) ;
 scalar_t__ MAX_MACHINE_MODE ;
 int N_REG_CLASSES ;
 int POST_INC ;
 int PUT_MODE (int,int) ;
 int SCRATCH ;
 scalar_t__ TEST_HARD_REG_BIT (int ,int) ;
 int VOIDmode ;
 int auto_inc_dec_reg_p (int,int) ;
 int base_reg_class (int,int ,int ) ;
 int* forbidden_inc_dec_class ;
 int gen_rtx_raw_REG (int,int ) ;
 int * reg_class_contents ;
 scalar_t__ secondary_reload_class (int,int,int,int) ;

__attribute__((used)) static void
init_reg_autoinc (void)
{
}
