
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_data {int dummy; } ;
typedef int lin ;


 int fprintf (int ,char*,long,...) ;
 int outfile ;
 int translate_range (struct file_data const*,int ,int ,long*,long*) ;

__attribute__((used)) static void
print_unidiff_number_range (struct file_data const *file, lin a, lin b)
{
  long int trans_a, trans_b;
  translate_range (file, a, b, &trans_a, &trans_b);





  if (trans_b <= trans_a)
    fprintf (outfile, trans_b < trans_a ? "%ld,0" : "%ld", trans_b);
  else
    fprintf (outfile, "%ld,%ld", trans_a, trans_b - trans_a + 1);
}
