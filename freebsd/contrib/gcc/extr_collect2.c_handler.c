
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIG_DFL ;
 scalar_t__* c_file ;
 scalar_t__* export_file ;
 scalar_t__* lderrout ;
 scalar_t__* ldout ;
 int maybe_unlink (scalar_t__*) ;
 scalar_t__* o_file ;
 int raise (int) ;
 int signal (int,int ) ;

__attribute__((used)) static void
handler (int signo)
{
  if (c_file != 0 && c_file[0])
    maybe_unlink (c_file);

  if (o_file != 0 && o_file[0])
    maybe_unlink (o_file);

  if (ldout != 0 && ldout[0])
    maybe_unlink (ldout);

  if (lderrout != 0 && lderrout[0])
    maybe_unlink (lderrout);






  signal (signo, SIG_DFL);
  raise (signo);
}
