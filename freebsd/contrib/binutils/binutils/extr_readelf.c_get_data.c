
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_SET ;
 int _ (char*) ;
 unsigned long archive_file_offset ;
 int error (int ,unsigned long,char const*) ;
 size_t fread (void*,size_t,size_t,int *) ;
 int free (void*) ;
 scalar_t__ fseek (int *,unsigned long,int ) ;
 void* malloc (size_t) ;

__attribute__((used)) static void *
get_data (void *var, FILE *file, long offset, size_t size, size_t nmemb,
   const char *reason)
{
  void *mvar;

  if (size == 0 || nmemb == 0)
    return ((void*)0);

  if (fseek (file, archive_file_offset + offset, SEEK_SET))
    {
      error (_("Unable to seek to 0x%lx for %s\n"),
      archive_file_offset + offset, reason);
      return ((void*)0);
    }

  mvar = var;
  if (mvar == ((void*)0))
    {

      if (nmemb < (~(size_t) 0 - 1) / size)

 mvar = malloc (size * nmemb + 1);

      if (mvar == ((void*)0))
 {
   error (_("Out of memory allocating 0x%lx bytes for %s\n"),
   (unsigned long)(size * nmemb), reason);
   return ((void*)0);
 }

      ((char *) mvar)[size * nmemb] = '\0';
    }

  if (fread (mvar, size, nmemb, file) != nmemb)
    {
      error (_("Unable to read in 0x%lx bytes of %s\n"),
      (unsigned long)(size * nmemb), reason);
      if (mvar != var)
 free (mvar);
      return ((void*)0);
    }

  return mvar;
}
