
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ggc_pch_data {int d; } ;
typedef int FILE ;


 int fatal_error (char*) ;
 int free (struct ggc_pch_data*) ;
 int fwrite (int *,int,int,int *) ;

void
ggc_pch_finish (struct ggc_pch_data *d, FILE *f)
{
  if (fwrite (&d->d, sizeof (d->d), 1, f) != 1)
    fatal_error ("can't write PCH file: %m");
  free (d);
}
