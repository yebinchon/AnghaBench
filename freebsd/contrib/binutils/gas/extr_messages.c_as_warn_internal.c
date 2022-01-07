
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 int as_where (char**,unsigned int*) ;
 int fprintf (int ,char*,...) ;
 int fputs (char*,int ) ;
 int identify (char*) ;
 int listing_warning (char*) ;
 int putc (char,int ) ;
 int stderr ;
 int warning_count ;

__attribute__((used)) static void
as_warn_internal (char *file, unsigned int line, char *buffer)
{
  ++warning_count;

  if (file == ((void*)0))
    as_where (&file, &line);

  identify (file);
  if (file)
    fprintf (stderr, "%s:%u: ", file, line);
  fprintf (stderr, _("Warning: "));
  fputs (buffer, stderr);
  (void) putc ('\n', stderr);

  listing_warning (buffer);

}
