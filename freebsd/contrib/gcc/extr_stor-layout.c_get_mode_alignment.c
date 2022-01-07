
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int BIGGEST_ALIGNMENT ;
 int BITS_PER_UNIT ;
 int MAX (int,int) ;
 unsigned int MIN (int ,int ) ;
 int* mode_base_align ;

unsigned int
get_mode_alignment (enum machine_mode mode)
{
  return MIN (BIGGEST_ALIGNMENT, MAX (1, mode_base_align[mode]*BITS_PER_UNIT));
}
