
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ gcov_unsigned_t ;
typedef scalar_t__ gcov_position_t ;
struct TYPE_2__ {scalar_t__ mode; scalar_t__ start; scalar_t__ length; scalar_t__ offset; int file; } ;


 int SEEK_SET ;
 int fseek (int ,scalar_t__,int ) ;
 int ftell (int ) ;
 int gcc_assert (int) ;
 TYPE_1__ gcov_var ;

void
gcov_sync (gcov_position_t base, gcov_unsigned_t length)
{
  gcc_assert (gcov_var.mode > 0);
  base += length;
  if (base - gcov_var.start <= gcov_var.length)
    gcov_var.offset = base - gcov_var.start;
  else
    {
      gcov_var.offset = gcov_var.length = 0;
      fseek (gcov_var.file, base << 2, SEEK_SET);
      gcov_var.start = ftell (gcov_var.file) >> 2;
    }
}
