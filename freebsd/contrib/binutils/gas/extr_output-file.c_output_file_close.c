
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;


 int _ (char*) ;
 int as_fatal (int ,char*,int ) ;
 int bfd_close (int *) ;
 int bfd_errmsg (int ) ;
 int bfd_get_error () ;
 int * stdoutput ;

void
output_file_close (char *filename)
{
  bfd_boolean res;

  if (stdoutput == ((void*)0))
    return;


  res = bfd_close (stdoutput);



  stdoutput = ((void*)0);

  if (! res)
    as_fatal (_("can't close %s: %s"), filename,
       bfd_errmsg (bfd_get_error ()));
}
