
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d_print_info {int * buf; } ;


 int free (int *) ;

__attribute__((used)) static void
d_print_error (struct d_print_info *dpi)
{
  free (dpi->buf);
  dpi->buf = ((void*)0);
}
