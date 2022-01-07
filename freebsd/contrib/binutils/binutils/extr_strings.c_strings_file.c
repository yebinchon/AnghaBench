
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int statbuf ;
typedef int file_off ;
typedef int bfd_boolean ;
typedef int FILE ;


 scalar_t__ ENOENT ;
 scalar_t__ EOF ;
 int FALSE ;
 int FOPEN_RB ;
 int TRUE ;
 int _ (char*) ;
 int datasection_only ;
 scalar_t__ errno ;
 scalar_t__ fclose (int *) ;
 int * file_open (char*,int ) ;
 scalar_t__ file_stat (char*,int *) ;
 int fprintf (int ,char*,char*) ;
 int non_fatal (int ,char*,...) ;
 int perror (char*) ;
 int print_strings (char*,int *,int ,int ,int ,char*) ;
 char* program_name ;
 int stderr ;
 int strerror (scalar_t__) ;
 int strings_object_file (char*) ;

__attribute__((used)) static bfd_boolean
strings_file (char *file)
{
  statbuf st;

  if (file_stat (file, &st) < 0)
    {
      if (errno == ENOENT)
 non_fatal (_("'%s': No such file"), file);
      else
 non_fatal (_("Warning: could not locate '%s'.  reason: %s"),
     file, strerror (errno));
      return FALSE;
    }





  if (!datasection_only || !strings_object_file (file))
    {
      FILE *stream;

      stream = file_open (file, FOPEN_RB);
      if (stream == ((void*)0))
 {
   fprintf (stderr, "%s: ", program_name);
   perror (file);
   return FALSE;
 }

      print_strings (file, stream, (file_off) 0, 0, 0, (char *) 0);

      if (fclose (stream) == EOF)
 {
   fprintf (stderr, "%s: ", program_name);
   perror (file);
   return FALSE;
 }
    }

  return TRUE;
}
