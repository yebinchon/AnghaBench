
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* vp_nvlist; } ;
struct TYPE_6__ {TYPE_1__ vl_vdev_phys; } ;
typedef TYPE_2__ vdev_label_t ;
typedef int uint64_t ;
struct stat64 {int st_size; int st_mode; } ;
typedef int path ;
typedef int nvlist_t ;
typedef int label ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int MAXPATHLEN ;
 int O_RDONLY ;
 int P2ALIGN (int ,int ) ;
 int SPA_MINBLOCKSHIFT ;
 scalar_t__ S_ISBLK (int ) ;
 int VDEV_LABELS ;
 int ZFS_DISK_ROOTD ;
 char* ZFS_RDISK_ROOTD ;
 int ZPOOL_CONFIG_ASHIFT ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 int close (int) ;
 int dump_label_uberblocks (TYPE_2__*,int ) ;
 int dump_nvlist (int *,int) ;
 scalar_t__* dump_opt ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,char*,...) ;
 scalar_t__ fstat64 (int,struct stat64*) ;
 int isdigit (char) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,int *) ;
 scalar_t__ nvlist_unpack (char*,size_t,int **,int ) ;
 int open64 (char*,int ) ;
 int pread64 (int,TYPE_2__*,int,int ) ;
 int printf (char*,...) ;
 int snprintf (char*,int,char*,char*,char const*) ;
 scalar_t__ stat64 (char*,struct stat64*) ;
 int stderr ;
 char* strchr (char const*,char) ;
 char* strerror (int ) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char const*,int) ;
 int strlen (int ) ;
 scalar_t__ strncmp (char const*,int ,int) ;
 char* strrchr (char const*,char) ;
 int vdev_label_offset (int ,int,int ) ;

__attribute__((used)) static int
dump_label(const char *dev)
{
 int fd;
 vdev_label_t label;
 char path[MAXPATHLEN];
 char *buf = label.vl_vdev_phys.vp_nvlist;
 size_t buflen = sizeof (label.vl_vdev_phys.vp_nvlist);
 struct stat64 statbuf;
 uint64_t psize, ashift;
 boolean_t label_found = B_FALSE;

 (void) strlcpy(path, dev, sizeof (path));
 if (dev[0] == '/') {
  if (strncmp(dev, ZFS_DISK_ROOTD,
      strlen(ZFS_DISK_ROOTD)) == 0) {
   (void) snprintf(path, sizeof (path), "%s%s",
       ZFS_RDISK_ROOTD, dev + strlen(ZFS_DISK_ROOTD));
  }
 } else if (stat64(path, &statbuf) != 0) {
  char *s;

  (void) snprintf(path, sizeof (path), "%s%s", ZFS_RDISK_ROOTD,
      dev);
  if (((s = strrchr(dev, 's')) == ((void*)0) &&
      (s = strchr(dev, 'p')) == ((void*)0)) ||
      !isdigit(*(s + 1)))
   (void) strlcat(path, "s0", sizeof (path));
 }

 if ((fd = open64(path, O_RDONLY)) < 0) {
  (void) fprintf(stderr, "cannot open '%s': %s\n", path,
      strerror(errno));
  exit(1);
 }

 if (fstat64(fd, &statbuf) != 0) {
  (void) fprintf(stderr, "failed to stat '%s': %s\n", path,
      strerror(errno));
  (void) close(fd);
  exit(1);
 }

 if (S_ISBLK(statbuf.st_mode)) {
  (void) fprintf(stderr,
      "cannot use '%s': character device required\n", path);
  (void) close(fd);
  exit(1);
 }

 psize = statbuf.st_size;
 psize = P2ALIGN(psize, (uint64_t)sizeof (vdev_label_t));

 for (int l = 0; l < VDEV_LABELS; l++) {
  nvlist_t *config = ((void*)0);

  if (!dump_opt['q']) {
   (void) printf("------------------------------------\n");
   (void) printf("LABEL %d\n", l);
   (void) printf("------------------------------------\n");
  }

  if (pread64(fd, &label, sizeof (label),
      vdev_label_offset(psize, l, 0)) != sizeof (label)) {
   if (!dump_opt['q'])
    (void) printf("failed to read label %d\n", l);
   continue;
  }

  if (nvlist_unpack(buf, buflen, &config, 0) != 0) {
   if (!dump_opt['q'])
    (void) printf("failed to unpack label %d\n", l);
   ashift = SPA_MINBLOCKSHIFT;
  } else {
   nvlist_t *vdev_tree = ((void*)0);

   if (!dump_opt['q'])
    dump_nvlist(config, 4);
   if ((nvlist_lookup_nvlist(config,
       ZPOOL_CONFIG_VDEV_TREE, &vdev_tree) != 0) ||
       (nvlist_lookup_uint64(vdev_tree,
       ZPOOL_CONFIG_ASHIFT, &ashift) != 0))
    ashift = SPA_MINBLOCKSHIFT;
   nvlist_free(config);
   label_found = B_TRUE;
  }
  if (dump_opt['u'])
   dump_label_uberblocks(&label, ashift);
 }

 (void) close(fd);

 return (label_found ? 0 : 2);
}
