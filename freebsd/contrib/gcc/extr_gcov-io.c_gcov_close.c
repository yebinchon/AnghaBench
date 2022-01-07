
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mode; int error; scalar_t__ buffer; scalar_t__ alloc; scalar_t__ length; scalar_t__ file; scalar_t__ offset; } ;


 int fclose (scalar_t__) ;
 int free (scalar_t__) ;
 TYPE_1__ gcov_var ;
 int gcov_write_block (scalar_t__) ;

int
gcov_close (void)
{
  if (gcov_var.file)
    {

      if (gcov_var.offset && gcov_var.mode < 0)
 gcov_write_block (gcov_var.offset);

      fclose (gcov_var.file);
      gcov_var.file = 0;
      gcov_var.length = 0;
    }

  free (gcov_var.buffer);
  gcov_var.alloc = 0;
  gcov_var.buffer = 0;

  gcov_var.mode = 0;
  return gcov_var.error;
}
