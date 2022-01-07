
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {size_t st_size; int st_mtime; int st_atime; int st_mode; } ;
typedef int file_ptr ;
typedef int bfd_size_type ;
typedef int bfd ;
typedef int FILE ;


 size_t BUFSIZE ;
 int FOPEN_WB ;
 int SEEK_SET ;
 int _ (char*) ;
 size_t bfd_bread (char*,int ,int *) ;
 char* bfd_get_filename (int *) ;
 int * bfd_my_archive (int *) ;
 int bfd_seek (int *,int ,int ) ;
 scalar_t__ bfd_stat_arch_elt (int *,struct stat*) ;
 int chmod (char*,int ) ;
 int errno ;
 int fatal (char*,char*,...) ;
 int fclose (int *) ;
 int * fopen (char*,int ) ;
 int free (char*) ;
 scalar_t__ fwrite (char*,int,size_t,int *) ;
 int * output_file ;
 char* output_filename ;
 int perror (char*) ;
 scalar_t__ preserve_dates ;
 int printf (char*,char*) ;
 int set_times (char*,struct stat*) ;
 int strerror (int ) ;
 scalar_t__ verbose ;
 int xexit (int) ;
 char* xmalloc (size_t) ;

void
extract_file (bfd *abfd)
{
  FILE *ostream;
  char *cbuf = xmalloc (BUFSIZE);
  size_t nread, tocopy;
  size_t ncopied = 0;
  size_t size;
  struct stat buf;

  if (bfd_stat_arch_elt (abfd, &buf) != 0)

    fatal (_("internal stat error on %s"), bfd_get_filename (abfd));
  size = buf.st_size;

  if (verbose)
    printf ("x - %s\n", bfd_get_filename (abfd));

  bfd_seek (abfd, (file_ptr) 0, SEEK_SET);

  ostream = ((void*)0);
  if (size == 0)
    {

      output_filename = bfd_get_filename (abfd);

      ostream = fopen (bfd_get_filename (abfd), FOPEN_WB);
      if (ostream == ((void*)0))
 {
   perror (bfd_get_filename (abfd));
   xexit (1);
 }

      output_file = ostream;
    }
  else
    while (ncopied < size)
      {
 tocopy = size - ncopied;
 if (tocopy > BUFSIZE)
   tocopy = BUFSIZE;

 nread = bfd_bread (cbuf, (bfd_size_type) tocopy, abfd);
 if (nread != tocopy)

   fatal (_("%s is not a valid archive"),
   bfd_get_filename (bfd_my_archive (abfd)));


 if (ostream == ((void*)0))
   {

     output_filename = bfd_get_filename (abfd);

     ostream = fopen (bfd_get_filename (abfd), FOPEN_WB);
     if (ostream == ((void*)0))
       {
  perror (bfd_get_filename (abfd));
  xexit (1);
       }

     output_file = ostream;
   }




 if ((size_t) fwrite (cbuf, 1, nread, ostream) != nread)
   fatal ("%s: %s", output_filename, strerror (errno));
 ncopied += tocopy;
      }

  if (ostream != ((void*)0))
    fclose (ostream);

  output_file = ((void*)0);
  output_filename = ((void*)0);

  chmod (bfd_get_filename (abfd), buf.st_mode);

  if (preserve_dates)
    {


      buf.st_atime = buf.st_mtime;
      set_times (bfd_get_filename (abfd), &buf);
    }

  free (cbuf);
}
