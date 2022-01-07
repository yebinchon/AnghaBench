
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {size_t st_size; } ;
typedef int file_ptr ;
typedef int bfd_size_type ;
typedef int bfd ;


 size_t BUFSIZE ;
 int SEEK_SET ;
 char* _ (char*) ;
 size_t bfd_bread (char*,int ,int *) ;
 char* bfd_get_filename (int *) ;
 int * bfd_my_archive (int *) ;
 int bfd_seek (int *,int ,int ) ;
 scalar_t__ bfd_stat_arch_elt (int *,struct stat*) ;
 int errno ;
 int fatal (char*,char*) ;
 int free (char*) ;
 scalar_t__ fwrite (char*,int,size_t,int ) ;
 int printf (char*,char*) ;
 int stdout ;
 char* strerror (int ) ;
 scalar_t__ verbose ;
 char* xmalloc (size_t) ;

__attribute__((used)) static void
print_contents (bfd *abfd)
{
  size_t ncopied = 0;
  char *cbuf = xmalloc (BUFSIZE);
  struct stat buf;
  size_t size;
  if (bfd_stat_arch_elt (abfd, &buf) != 0)

    fatal (_("internal stat error on %s"), bfd_get_filename (abfd));

  if (verbose)

    printf (_("\n<%s>\n\n"), bfd_get_filename (abfd));

  bfd_seek (abfd, (file_ptr) 0, SEEK_SET);

  size = buf.st_size;
  while (ncopied < size)
    {

      size_t nread;
      size_t tocopy = size - ncopied;
      if (tocopy > BUFSIZE)
 tocopy = BUFSIZE;

      nread = bfd_bread (cbuf, (bfd_size_type) tocopy, abfd);
      if (nread != tocopy)

 fatal (_("%s is not a valid archive"),
        bfd_get_filename (bfd_my_archive (abfd)));




      if ((size_t) fwrite (cbuf, 1, nread, stdout) != nread)
 fatal ("stdout: %s", strerror (errno));
      ncopied += tocopy;
    }
  free (cbuf);
}
