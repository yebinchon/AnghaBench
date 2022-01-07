
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int string; } ;


 int BITS_PER_UNIT ;





 scalar_t__ TARGET_BPABI ;
 int TARGET_HARD_FLOAT ;
 int TARGET_HARD_FLOAT_ABI ;
 scalar_t__ TARGET_SOFT_FLOAT ;
 scalar_t__ TARGET_VFP ;
 scalar_t__ WCHAR_TYPE_SIZE ;
 int abort () ;
 TYPE_2__* all_cores ;
 size_t arm_default_cpu ;
 int arm_fpu_arch ;
 TYPE_1__* arm_select ;
 int asm_fprintf (int ,char*,...) ;
 int asm_out_file ;
 int default_file_start () ;
 scalar_t__ flag_finite_math_only ;
 scalar_t__ flag_rounding_math ;
 scalar_t__ flag_short_enums ;
 scalar_t__ flag_signaling_nans ;
 int flag_unsafe_math_optimizations ;
 int optimize ;
 scalar_t__ optimize_size ;

__attribute__((used)) static void
arm_file_start (void)
{
  int val;

  if (TARGET_BPABI)
    {
      const char *fpu_name;
      if (arm_select[0].string)
 asm_fprintf (asm_out_file, "\t.cpu %s\n", arm_select[0].string);
      else if (arm_select[1].string)
 asm_fprintf (asm_out_file, "\t.arch %s\n", arm_select[1].string);
      else
 asm_fprintf (asm_out_file, "\t.cpu %s\n",
       all_cores[arm_default_cpu].name);

      if (TARGET_SOFT_FLOAT)
 {
   if (TARGET_VFP)
     fpu_name = "softvfp";
   else
     fpu_name = "softfpa";
 }
      else
 {
   switch (arm_fpu_arch)
     {
     case 132:
       fpu_name = "fpa";
       break;
     case 131:
       fpu_name = "fpe2";
       break;
     case 130:
       fpu_name = "fpe3";
       break;
     case 129:
       fpu_name = "maverick";
       break;
     case 128:
       if (TARGET_HARD_FLOAT)
  asm_fprintf (asm_out_file, "\t.eabi_attribute 27, 3\n");
       if (TARGET_HARD_FLOAT_ABI)
  asm_fprintf (asm_out_file, "\t.eabi_attribute 28, 1\n");
       fpu_name = "vfp";
       break;
     default:
       abort();
     }
 }
      asm_fprintf (asm_out_file, "\t.fpu %s\n", fpu_name);






      asm_fprintf (asm_out_file, "\t.eabi_attribute 18, %d\n",
     (int)WCHAR_TYPE_SIZE / BITS_PER_UNIT);


      if (flag_rounding_math)
 asm_fprintf (asm_out_file, "\t.eabi_attribute 19, 1\n");
      if (!flag_unsafe_math_optimizations)
 {

   asm_fprintf (asm_out_file, "\t.eabi_attribute 20, 1\n");

   asm_fprintf (asm_out_file, "\t.eabi_attribute 21, 1\n");
 }

      if (flag_signaling_nans)
 asm_fprintf (asm_out_file, "\t.eabi_attribute 22, 1\n");

      asm_fprintf (asm_out_file, "\t.eabi_attribute 23, %d\n",
     flag_finite_math_only ? 1 : 3);


      asm_fprintf (asm_out_file, "\t.eabi_attribute 24, 1\n");

      asm_fprintf (asm_out_file, "\t.eabi_attribute 25, 1\n");

      asm_fprintf (asm_out_file, "\t.eabi_attribute 26, %d\n",
     flag_short_enums ? 1 : 2);


      if (optimize_size)
 val = 4;
      else if (optimize >= 2)
 val = 2;
      else if (optimize)
 val = 1;
      else
 val = 6;
      asm_fprintf (asm_out_file, "\t.eabi_attribute 30, %d\n", val);
    }
  default_file_start();
}
