
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DTRACEHIOC_REMOVE ;
 int O_RDWR ;
 int close (int) ;
 int dbg_printf (int,char*,int) ;
 int devnamep ;
 int gen ;
 int ioctl (int,int ,int*) ;
 int open64 (int,int ) ;

__attribute__((used)) static void
dtrace_dof_fini(void)
{
 int fd;

 if ((fd = open64(devnamep, O_RDWR)) < 0) {
  dbg_printf(1, "failed to open helper device %s", devnamep);
  return;
 }

 if ((gen = ioctl(fd, DTRACEHIOC_REMOVE, &gen)) == -1)
  dbg_printf(1, "DTrace ioctl failed to remove DOF (%d)\n", gen);
 else
  dbg_printf(1, "DTrace ioctl removed DOF (%d)\n", gen);

 (void) close(fd);
}
