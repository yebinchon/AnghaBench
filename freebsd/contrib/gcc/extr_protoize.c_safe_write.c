
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINTR ;
 int errno ;
 int notice (char*,int ,int ,int ) ;
 int pname ;
 int shortpath (int *,char const*) ;
 int write (int,void*,int) ;
 int xstrerror (int) ;

__attribute__((used)) static void
safe_write (int desc, void *ptr, int len, const char *out_fname)
{
  while (len > 0) {
    int written = write (desc, ptr, len);
    if (written < 0)
      {
 int errno_val = errno;




 notice ("%s: error writing file '%s': %s\n",
  pname, shortpath (((void*)0), out_fname), xstrerror (errno_val));
 return;
      }

    ptr = (char *) ptr + written;
    len -= written;
  }
}
