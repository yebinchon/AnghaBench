
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int FILE ;


 int ARMAG ;
 scalar_t__ ENOENT ;
 int SARMAG ;
 int S_ISREG (int ) ;
 int _ (char*) ;
 scalar_t__ archive_file_offset ;
 scalar_t__ archive_file_size ;
 scalar_t__ errno ;
 int error (int ,char*,...) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (char*,int,int,int *) ;
 scalar_t__ memcmp (char*,int ,int) ;
 int process_archive (char*,int *) ;
 int process_object (char*,int *) ;
 int rewind (int *) ;
 scalar_t__ stat (char*,struct stat*) ;
 char* strerror (scalar_t__) ;

__attribute__((used)) static int
process_file (char *file_name)
{
  FILE *file;
  struct stat statbuf;
  char armag[SARMAG];
  int ret;

  if (stat (file_name, &statbuf) < 0)
    {
      if (errno == ENOENT)
 error (_("'%s': No such file\n"), file_name);
      else
 error (_("Could not locate '%s'.  System error message: %s\n"),
        file_name, strerror (errno));
      return 1;
    }

  if (! S_ISREG (statbuf.st_mode))
    {
      error (_("'%s' is not an ordinary file\n"), file_name);
      return 1;
    }

  file = fopen (file_name, "rb");
  if (file == ((void*)0))
    {
      error (_("Input file '%s' is not readable.\n"), file_name);
      return 1;
    }

  if (fread (armag, SARMAG, 1, file) != 1)
    {
      error (_("%s: Failed to read file header\n"), file_name);
      fclose (file);
      return 1;
    }

  if (memcmp (armag, ARMAG, SARMAG) == 0)
    ret = process_archive (file_name, file);
  else
    {
      rewind (file);
      archive_file_size = archive_file_offset = 0;
      ret = process_object (file_name, file);
    }

  fclose (file);

  return ret;
}
