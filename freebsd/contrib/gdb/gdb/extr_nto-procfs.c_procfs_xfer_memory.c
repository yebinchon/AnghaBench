
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;
struct mem_attrib {int dummy; } ;
typedef scalar_t__ off_t ;
typedef scalar_t__ CORE_ADDR ;


 int SEEK_SET ;
 int ctl_fd ;
 scalar_t__ lseek (int ,scalar_t__,int ) ;
 int read (int ,char*,int) ;
 int write (int ,char*,int) ;

__attribute__((used)) static int
procfs_xfer_memory (CORE_ADDR memaddr, char *myaddr, int len, int dowrite,
      struct mem_attrib *attrib, struct target_ops *target)
{
  int nbytes = 0;

  if (lseek (ctl_fd, (off_t) memaddr, SEEK_SET) == (off_t) memaddr)
    {
      if (dowrite)
 nbytes = write (ctl_fd, myaddr, len);
      else
 nbytes = read (ctl_fd, myaddr, len);
      if (nbytes < 0)
 nbytes = 0;
    }
  return (nbytes);
}
