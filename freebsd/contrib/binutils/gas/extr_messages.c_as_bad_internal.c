
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 int as_where (char**,unsigned int*) ;
 int error_count ;
 int fprintf (int ,char*,...) ;
 int fputs (char*,int ) ;
 int identify (char*) ;
 int listing_error (char*) ;
 int putc (char,int ) ;
 int stderr ;

__attribute__((used)) static void
as_bad_internal (char *file, unsigned int line, char *buffer)
{
  ++error_count;

  if (file == ((void*)0))
    as_where (&file, &line);

  identify (file);
  if (file)
    fprintf (stderr, "%s:%u: ", file, line);
  fprintf (stderr, _("Error: "));
  fputs (buffer, stderr);
  (void) putc ('\n', stderr);

  listing_error (buffer);

}
