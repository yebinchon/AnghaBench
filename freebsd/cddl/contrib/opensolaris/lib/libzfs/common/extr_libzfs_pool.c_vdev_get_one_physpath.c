
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int EZFS_NODEVICE ;
 int EZFS_NOSPC ;
 int ZPOOL_CONFIG_PHYS_PATH ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 size_t snprintf (char*,size_t,char const*,char*) ;

__attribute__((used)) static int
vdev_get_one_physpath(nvlist_t *config, char *physpath, size_t physpath_size,
    size_t *bytes_written)
{
 size_t bytes_left, pos, rsz;
 char *tmppath;
 const char *format;

 if (nvlist_lookup_string(config, ZPOOL_CONFIG_PHYS_PATH,
     &tmppath) != 0)
  return (EZFS_NODEVICE);

 pos = *bytes_written;
 bytes_left = physpath_size - pos;
 format = (pos == 0) ? "%s" : " %s";

 rsz = snprintf(physpath + pos, bytes_left, format, tmppath);
 *bytes_written += rsz;

 if (rsz >= bytes_left) {

  if (bytes_left != 0) {
   physpath[pos] = 0;
  }
  return (EZFS_NOSPC);
 }
 return (0);
}
