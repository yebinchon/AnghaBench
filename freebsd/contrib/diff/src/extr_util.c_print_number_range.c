
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_data {int dummy; } ;
typedef int lin ;


 int fprintf (int ,char*,long,...) ;
 int outfile ;
 int translate_range (struct file_data*,int ,int ,long*,long*) ;

void
print_number_range (char sepchar, struct file_data *file, lin a, lin b)
{
  long int trans_a, trans_b;
  translate_range (file, a, b, &trans_a, &trans_b);




  if (trans_b > trans_a)
    fprintf (outfile, "%ld%c%ld", trans_a, sepchar, trans_b);
  else
    fprintf (outfile, "%ld", trans_b);
}
