
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;
typedef scalar_t__ ssize_t ;
typedef int off_t ;


 char* MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 int free (char*) ;
 scalar_t__ fstat (int,struct stat*) ;
 char* malloc (size_t) ;
 char* mmap (int *,size_t,int ,int ,int,int ) ;
 scalar_t__ munmap (char*,size_t) ;
 scalar_t__ read (int,char*,size_t) ;
 scalar_t__ write (int,char*,size_t) ;

int
elftc_copyfile(int ifd, int ofd)
{
 size_t file_size, n;
 int buf_mmapped;
 struct stat sb;
 char *b, *buf;
 ssize_t nr, nw;


 if (fstat(ifd, &sb) < 0)
  return (-1);


 if (sb.st_size == 0)
  return (0);

 buf = ((void*)0);
 buf_mmapped = 0;
 file_size = (size_t) sb.st_size;
 if (buf_mmapped == 0) {
  if ((buf = malloc(file_size)) == ((void*)0))
   return (-1);
  b = buf;
  for (n = file_size; n > 0; n -= (size_t) nr, b += nr) {
   if ((nr = read(ifd, b, n)) < 0) {
    free(buf);
    return (-1);
   }
  }
 }




 for (n = file_size, b = buf; n > 0; n -= (size_t) nw, b += nw)
  if ((nw = write(ofd, b, n)) <= 0)
   break;







 if (!buf_mmapped)
  free(buf);

 return (n > 0 ? -1 : 0);
}
