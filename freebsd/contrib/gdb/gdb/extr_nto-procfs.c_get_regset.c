
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DCMD_PROC_GETALTREG ;
 int DCMD_PROC_GETFPREG ;
 int DCMD_PROC_GETGREG ;
 int DCMD_PROC_SETALTREG ;
 int DCMD_PROC_SETFPREG ;
 int DCMD_PROC_SETGREG ;
 scalar_t__ EOK ;




 int ctl_fd ;
 scalar_t__ devctl (int ,int,char**,int,int*) ;

__attribute__((used)) static int
get_regset (int regset, char *buf, int bufsize, int *regsize)
{
  int dev_get, dev_set;
  switch (regset)
    {
    case 129:
      dev_get = DCMD_PROC_GETGREG;
      dev_set = DCMD_PROC_SETGREG;
      break;

    case 130:
      dev_get = DCMD_PROC_GETFPREG;
      dev_set = DCMD_PROC_SETFPREG;
      break;

    case 131:
      dev_get = DCMD_PROC_GETALTREG;
      dev_set = DCMD_PROC_SETALTREG;
      break;

    case 128:
    default:
      return -1;
    }
  if (devctl (ctl_fd, dev_get, &buf, bufsize, regsize) != EOK)
    return -1;

  return dev_set;
}
