
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int DImode ;
 int SImode ;
 scalar_t__ TARGET_64BIT ;

__attribute__((used)) static bool
s390_valid_pointer_mode (enum machine_mode mode)
{
  return (mode == SImode || (TARGET_64BIT && mode == DImode));
}
