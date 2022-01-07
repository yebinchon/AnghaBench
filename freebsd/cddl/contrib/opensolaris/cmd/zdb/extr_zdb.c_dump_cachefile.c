
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_longlong_t ;
struct stat64 {scalar_t__ st_size; } ;
typedef int nvlist_t ;


 int O_RDONLY ;
 int close (int) ;
 int dump_nvlist (int *,int ) ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 scalar_t__ fstat64 (int,struct stat64*) ;
 char* malloc (scalar_t__) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_unpack (char*,scalar_t__,int **,int ) ;
 int open64 (char const*,int ) ;
 scalar_t__ read (int,char*,scalar_t__) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static void
dump_cachefile(const char *cachefile)
{
 int fd;
 struct stat64 statbuf;
 char *buf;
 nvlist_t *config;

 if ((fd = open64(cachefile, O_RDONLY)) < 0) {
  (void) fprintf(stderr, "cannot open '%s': %s\n", cachefile,
      strerror(errno));
  exit(1);
 }

 if (fstat64(fd, &statbuf) != 0) {
  (void) fprintf(stderr, "failed to stat '%s': %s\n", cachefile,
      strerror(errno));
  exit(1);
 }

 if ((buf = malloc(statbuf.st_size)) == ((void*)0)) {
  (void) fprintf(stderr, "failed to allocate %llu bytes\n",
      (u_longlong_t)statbuf.st_size);
  exit(1);
 }

 if (read(fd, buf, statbuf.st_size) != statbuf.st_size) {
  (void) fprintf(stderr, "failed to read %llu bytes\n",
      (u_longlong_t)statbuf.st_size);
  exit(1);
 }

 (void) close(fd);

 if (nvlist_unpack(buf, statbuf.st_size, &config, 0) != 0) {
  (void) fprintf(stderr, "failed to unpack nvlist\n");
  exit(1);
 }

 free(buf);

 dump_nvlist(config, 0);

 nvlist_free(config);
}
