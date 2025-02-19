
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int pathbuf ;
typedef int nvlist_t ;
struct TYPE_4__ {char* zo_pool; int zo_dir; } ;
struct TYPE_3__ {scalar_t__ zs_vdev_aux; int zs_vdev_next_leaf; } ;


 int MAXPATHLEN ;
 int NV_UNIQUE_NAME ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 char* VDEV_TYPE_FILE ;
 int VERIFY (int) ;
 int ZPOOL_CONFIG_ASHIFT ;
 int ZPOOL_CONFIG_PATH ;
 int ZPOOL_CONFIG_TYPE ;
 int close (int) ;
 int fatal (int,char*,char*) ;
 scalar_t__ ftruncate (int,size_t) ;
 scalar_t__ nvlist_add_string (int *,int ,char*) ;
 scalar_t__ nvlist_add_uint64 (int *,int ,scalar_t__) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int open (char*,int,int) ;
 int snprintf (char*,int,char*,int ,char*,scalar_t__,...) ;
 char* ztest_aux_template ;
 char* ztest_dev_template ;
 scalar_t__ ztest_get_ashift () ;
 TYPE_2__ ztest_opts ;
 TYPE_1__* ztest_shared ;

__attribute__((used)) static nvlist_t *
make_vdev_file(char *path, char *aux, char *pool, size_t size, uint64_t ashift)
{
 char pathbuf[MAXPATHLEN];
 uint64_t vdev;
 nvlist_t *file;

 if (ashift == 0)
  ashift = ztest_get_ashift();

 if (path == ((void*)0)) {
  path = pathbuf;

  if (aux != ((void*)0)) {
   vdev = ztest_shared->zs_vdev_aux;
   (void) snprintf(path, sizeof (pathbuf),
       ztest_aux_template, ztest_opts.zo_dir,
       pool == ((void*)0) ? ztest_opts.zo_pool : pool,
       aux, vdev);
  } else {
   vdev = ztest_shared->zs_vdev_next_leaf++;
   (void) snprintf(path, sizeof (pathbuf),
       ztest_dev_template, ztest_opts.zo_dir,
       pool == ((void*)0) ? ztest_opts.zo_pool : pool, vdev);
  }
 }

 if (size != 0) {
  int fd = open(path, O_RDWR | O_CREAT | O_TRUNC, 0666);
  if (fd == -1)
   fatal(1, "can't open %s", path);
  if (ftruncate(fd, size) != 0)
   fatal(1, "can't ftruncate %s", path);
  (void) close(fd);
 }

 VERIFY(nvlist_alloc(&file, NV_UNIQUE_NAME, 0) == 0);
 VERIFY(nvlist_add_string(file, ZPOOL_CONFIG_TYPE, VDEV_TYPE_FILE) == 0);
 VERIFY(nvlist_add_string(file, ZPOOL_CONFIG_PATH, path) == 0);
 VERIFY(nvlist_add_uint64(file, ZPOOL_CONFIG_ASHIFT, ashift) == 0);

 return (file);
}
