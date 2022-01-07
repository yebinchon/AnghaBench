
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d_print_info {int demangle_failure; } ;



__attribute__((used)) static inline void
d_print_error (struct d_print_info *dpi)
{
  dpi->demangle_failure = 1;
}
