
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int _ (char*) ;
 int fputs (int ,int *) ;

void
md_show_usage (FILE *stream)
{
  fputs (_("Alpha options:\n-32addr			treat addresses as 32-bit values\n-F			lack floating point instructions support\n-mev4 | -mev45 | -mev5 | -mev56 | -mpca56 | -mev6 | -mev67 | -mev68 | -mall\n			specify variant of Alpha architecture\n-m21064 | -m21066 | -m21164 | -m21164a | -m21164pc | -m21264 | -m21264a | -m21264b\n			these variants include PALcode opcodes\n"),







 stream);







}
