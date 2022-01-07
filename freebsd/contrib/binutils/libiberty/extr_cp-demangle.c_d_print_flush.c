
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d_print_info {char* buf; size_t len; int opaque; int (* callback ) (char*,size_t,int ) ;} ;


 int stub1 (char*,size_t,int ) ;

__attribute__((used)) static inline void
d_print_flush (struct d_print_info *dpi)
{
  dpi->buf[dpi->len] = '\0';
  dpi->callback (dpi->buf, dpi->len, dpi->opaque);
  dpi->len = 0;
}
