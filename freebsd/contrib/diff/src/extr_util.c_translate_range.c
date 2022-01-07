
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_data {int dummy; } ;
typedef scalar_t__ lin ;


 int translate_line_number (struct file_data const*,scalar_t__) ;

void
translate_range (struct file_data const *file,
   lin a, lin b,
   long int *aptr, long int *bptr)
{
  *aptr = translate_line_number (file, a - 1) + 1;
  *bptr = translate_line_number (file, b + 1) - 1;
}
