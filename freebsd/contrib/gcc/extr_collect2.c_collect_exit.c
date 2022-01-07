
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* c_file ;
 int dump_file (scalar_t__*,int ) ;
 int exit (int) ;
 scalar_t__* export_file ;
 scalar_t__* lderrout ;
 scalar_t__* ldout ;
 int maybe_unlink (scalar_t__*) ;
 scalar_t__* o_file ;
 scalar_t__* output_file ;
 int stderr ;
 int stdout ;

void
collect_exit (int status)
{
  if (c_file != 0 && c_file[0])
    maybe_unlink (c_file);

  if (o_file != 0 && o_file[0])
    maybe_unlink (o_file);






  if (ldout != 0 && ldout[0])
    {
      dump_file (ldout, stdout);
      maybe_unlink (ldout);
    }

  if (lderrout != 0 && lderrout[0])
    {
      dump_file (lderrout, stderr);
      maybe_unlink (lderrout);
    }

  if (status != 0 && output_file != 0 && output_file[0])
    maybe_unlink (output_file);

  exit (status);
}
