
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loadedfile {long len; long maplen; char* buf; } ;
typedef scalar_t__ ssize_t ;


 int EFBIG ;
 int Error (char*,char const*,...) ;
 int MAP_COPY ;
 char* MAP_FAILED ;
 int MAP_FILE ;
 int O_RDONLY ;
 int PROT_READ ;
 int PROT_WRITE ;
 int SIZE_MAX ;
 int STDIN_FILENO ;
 scalar_t__ SUCCESS ;
 int _SC_PAGESIZE ;
 int assert (int) ;
 void* bmake_malloc (int) ;
 void* bmake_realloc (char*,int) ;
 int close (int) ;
 int errno ;
 int exit (int) ;
 scalar_t__ load_getsize (int,long*) ;
 struct loadedfile* loadedfile_create (char const*) ;
 int memcpy (char*,char*,int ) ;
 char* mmap (int *,long,int,int,int,int ) ;
 int munmap (char*,long) ;
 int open (char const*,int ) ;
 scalar_t__ read (int,char*,size_t) ;
 int strerror (int ) ;
 long sysconf (int ) ;

__attribute__((used)) static struct loadedfile *
loadfile(const char *path, int fd)
{
 struct loadedfile *lf;



 ssize_t result;
 size_t bufpos;

 lf = loadedfile_create(path);

 if (path == ((void*)0)) {
  assert(fd == -1);
  fd = STDIN_FILENO;
 } else {
 }
 lf->maplen = 0;
 lf->len = 1024;
 lf->buf = bmake_malloc(lf->len);

 bufpos = 0;
 while (1) {
  assert(bufpos <= lf->len);
  if (bufpos == lf->len) {
   if (lf->len > SIZE_MAX/2) {
    errno = EFBIG;
    Error("%s: file too large", path);
    exit(1);
   }
   lf->len *= 2;
   lf->buf = bmake_realloc(lf->buf, lf->len);
  }
  assert(bufpos < lf->len);
  result = read(fd, lf->buf + bufpos, lf->len - bufpos);
  if (result < 0) {
   Error("%s: read error: %s", path, strerror(errno));
   exit(1);
  }
  if (result == 0) {
   break;
  }
  bufpos += result;
 }
 assert(bufpos <= lf->len);
 lf->len = bufpos;


 if (lf->len > 0) {

  if (lf->buf[lf->len - 1] != '\n')
   lf->len++;
  lf->buf = bmake_realloc(lf->buf, lf->len);
  lf->buf[lf->len - 1] = '\n';
 }




 if (path != ((void*)0)) {
  close(fd);
 }
 return lf;
}
