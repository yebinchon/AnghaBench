
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ggc_pch_data {int start_offset; } ;
typedef int FILE ;


 int ftell (int *) ;

void
ggc_pch_prepare_write (struct ggc_pch_data *d,
         FILE *f)
{



  d->start_offset = ftell (f);
}
