
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bbg_file_name ;
 scalar_t__ bbg_file_opened ;
 int create_coverage () ;
 int da_file_name ;
 int gcov_close () ;
 int local_tick ;
 int unlink (int ) ;

void
coverage_finish (void)
{
  create_coverage ();
  if (bbg_file_opened)
    {
      int error = gcov_close ();

      if (error)
 unlink (bbg_file_name);
      if (!local_tick)


 unlink (da_file_name);
    }
}
