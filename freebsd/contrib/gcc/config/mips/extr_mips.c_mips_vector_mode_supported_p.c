
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int TARGET_DSP ;
 int TARGET_PAIRED_SINGLE_FLOAT ;




__attribute__((used)) static bool
mips_vector_mode_supported_p (enum machine_mode mode)
{
  switch (mode)
    {
    case 129:
      return TARGET_PAIRED_SINGLE_FLOAT;

    case 130:
    case 128:
      return TARGET_DSP;

    default:
      return 0;
    }
}
