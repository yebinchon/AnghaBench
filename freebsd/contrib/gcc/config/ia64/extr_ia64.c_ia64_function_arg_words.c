
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int BLKmode ;
 int GET_MODE_SIZE (int) ;
 int UNITS_PER_WORD ;
 int int_size_in_bytes (int ) ;

__attribute__((used)) static int
ia64_function_arg_words (tree type, enum machine_mode mode)
{
  int words;

  if (mode == BLKmode)
    words = int_size_in_bytes (type);
  else
    words = GET_MODE_SIZE (mode);

  return (words + UNITS_PER_WORD - 1) / UNITS_PER_WORD;
}
