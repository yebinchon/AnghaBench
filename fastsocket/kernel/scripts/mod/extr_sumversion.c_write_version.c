
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;


 int O_RDWR ;
 int SEEK_SET ;
 int close (int) ;
 int errno ;
 scalar_t__ lseek (int,unsigned long,int ) ;
 int open (char const*,int ) ;
 int strerror (int ) ;
 scalar_t__ strlen (char const*) ;
 int warn (char*,char const*,unsigned long,...) ;
 scalar_t__ write (int,char const*,scalar_t__) ;

__attribute__((used)) static void write_version(const char *filename, const char *sum,
     unsigned long offset)
{
 int fd;

 fd = open(filename, O_RDWR);
 if (fd < 0) {
  warn("changing sum in %s failed: %s\n",
   filename, strerror(errno));
  return;
 }

 if (lseek(fd, offset, SEEK_SET) == (off_t)-1) {
  warn("changing sum in %s:%lu failed: %s\n",
   filename, offset, strerror(errno));
  goto out;
 }

 if (write(fd, sum, strlen(sum)+1) != strlen(sum)+1) {
  warn("writing sum in %s failed: %s\n",
   filename, strerror(errno));
  goto out;
 }
out:
 close(fd);
}
