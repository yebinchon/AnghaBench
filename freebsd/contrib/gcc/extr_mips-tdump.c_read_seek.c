
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;


 int exit (int) ;
 int fprintf (int ,char*,char const*,long,long) ;
 int lseek (int ,scalar_t__,int ) ;
 int perror (char const*) ;
 long read (int ,void*,size_t) ;
 int stderr ;
 int tfile_fd ;
 scalar_t__ tfile_offset ;
 void* xmalloc (size_t) ;

__attribute__((used)) static void *
read_seek (void *ptr, size_t size, off_t offset, const char *context)
{
  long read_size = 0;

  if (size == 0)
    return ptr;

  if (!ptr)
    ptr = xmalloc (size);

  if ((tfile_offset != offset && lseek (tfile_fd, offset, 0) == -1)
      || (read_size = read (tfile_fd, ptr, size)) < 0)
    {
      perror (context);
      exit (1);
    }

  if (read_size != (long) size)
    {
      fprintf (stderr, "%s: read %ld bytes, expected %ld bytes\n",
        context, read_size, (long) size);
      exit (1);
    }

  tfile_offset = offset + size;
  return ptr;
}
