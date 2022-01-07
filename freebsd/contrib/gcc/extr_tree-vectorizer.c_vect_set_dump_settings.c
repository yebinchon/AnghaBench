
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAX_VERBOSITY_LEVEL ;
 scalar_t__ REPORT_DETAILS ;
 scalar_t__ REPORT_NONE ;
 scalar_t__ REPORT_UNVECTORIZED_LOOPS ;
 int TDF_DETAILS ;
 int TDF_STATS ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int gcc_assert (int) ;
 scalar_t__ stderr ;
 scalar_t__ vect_dump ;
 scalar_t__ vect_verbosity_level ;

__attribute__((used)) static void
vect_set_dump_settings (void)
{
  vect_dump = dump_file;


  if (vect_verbosity_level != MAX_VERBOSITY_LEVEL)
    {

      if (!dump_file)
        vect_dump = stderr;
      return;
    }


  if (dump_file && (dump_flags & TDF_DETAILS))
    vect_verbosity_level = REPORT_DETAILS;
  else if (dump_file && (dump_flags & TDF_STATS))
    vect_verbosity_level = REPORT_UNVECTORIZED_LOOPS;
  else
    vect_verbosity_level = REPORT_NONE;

  gcc_assert (dump_file || vect_verbosity_level == REPORT_NONE);
}
