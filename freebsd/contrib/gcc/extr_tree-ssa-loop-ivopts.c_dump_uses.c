
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivopts_data {int dummy; } ;
struct iv_use {int dummy; } ;
typedef int FILE ;


 int dump_use (int *,struct iv_use*) ;
 int fprintf (int *,char*) ;
 struct iv_use* iv_use (struct ivopts_data*,unsigned int) ;
 unsigned int n_iv_uses (struct ivopts_data*) ;

void
dump_uses (FILE *file, struct ivopts_data *data)
{
  unsigned i;
  struct iv_use *use;

  for (i = 0; i < n_iv_uses (data); i++)
    {
      use = iv_use (data, i);

      dump_use (file, use);
      fprintf (file, "\n");
    }
}
