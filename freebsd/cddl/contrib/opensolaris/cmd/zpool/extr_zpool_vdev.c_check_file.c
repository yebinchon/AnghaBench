
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pool_state_t ;
typedef scalar_t__ boolean_t ;


 int O_RDONLY ;




 int close (int) ;
 scalar_t__ dm_inuse_swap (char const*,int*) ;
 int free (char*) ;
 int g_zfs ;
 char* gettext (char*) ;
 int libdiskmgt_error (int) ;
 int open (char const*,int ) ;
 int vdev_error (char*,char const*,...) ;
 scalar_t__ zpool_in_use (int ,int,int*,char**,scalar_t__*) ;

__attribute__((used)) static int
check_file(const char *file, boolean_t force, boolean_t isspare)
{
 char *name;
 int fd;
 int ret = 0;
 int err;
 pool_state_t state;
 boolean_t inuse;
 if ((fd = open(file, O_RDONLY)) < 0)
  return (0);

 if (zpool_in_use(g_zfs, fd, &state, &name, &inuse) == 0 && inuse) {
  const char *desc;

  switch (state) {
  case 131:
   desc = gettext("active");
   break;

  case 130:
   desc = gettext("exported");
   break;

  case 129:
   desc = gettext("potentially active");
   break;

  default:
   desc = gettext("unknown");
   break;
  }




  if (state == 128 && isspare)
   return (0);

  if (state == 131 ||
      state == 128 || !force) {
   switch (state) {
   case 128:
    vdev_error(gettext("%s is reserved as a hot "
        "spare for pool %s\n"), file, name);
    break;
   default:
    vdev_error(gettext("%s is part of %s pool "
        "'%s'\n"), file, desc, name);
    break;
   }
   ret = -1;
  }

  free(name);
 }

 (void) close(fd);
 return (ret);
}
