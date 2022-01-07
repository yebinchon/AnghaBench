
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EXDEV ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int close (int) ;
 scalar_t__ elftc_copyfile (int,int) ;
 scalar_t__ errno ;
 int open (char const*,int,int) ;
 scalar_t__ rename (char const*,char const*) ;
 scalar_t__ unlink (char const*) ;

__attribute__((used)) static int
copy_from_tempfile(const char *src, const char *dst, int infd, int *outfd,
    int in_place)
{
 int tmpfd;




 if (in_place == 0) {
  if (rename(src, dst) >= 0) {
   *outfd = infd;
   return (0);
  } else if (errno != EXDEV)
   return (-1);







  if (unlink(dst) < 0)
   return (-1);
 }

 if ((tmpfd = open(dst, O_CREAT | O_TRUNC | O_WRONLY, 0755)) < 0)
  return (-1);

 if (elftc_copyfile(infd, tmpfd) < 0)
  return (-1);





 if (unlink(src) < 0)
  return (-1);

 (void) close(infd);




 *outfd = tmpfd;

 return (0);
}
