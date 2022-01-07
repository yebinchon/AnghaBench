
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; int file; scalar_t__ offset; scalar_t__ start; } ;


 int SEEK_SET ;
 int fseek (int ,long,int ) ;
 int gcc_assert (int) ;
 TYPE_1__ gcov_var ;

__attribute__((used)) static inline void
gcov_rewrite (void)
{
  gcc_assert (gcov_var.mode > 0);
  gcov_var.mode = -1;
  gcov_var.start = 0;
  gcov_var.offset = 0;
  fseek (gcov_var.file, 0L, SEEK_SET);
}
