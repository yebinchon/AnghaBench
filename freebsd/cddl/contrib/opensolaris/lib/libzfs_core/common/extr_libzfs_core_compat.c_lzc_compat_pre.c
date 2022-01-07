
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfs_ioc_t ;
struct TYPE_3__ {int zc_cleanup_fd; int zc_string; int zc_value; int zc_name; int zc_objset_type; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int int32_t ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int MAXNAMELEN ;
 int MAXPATHLEN ;
 scalar_t__ ZFS_IOCVER_LZC ;







 int fnvlist_lookup_int32 (int *,char*) ;
 int * fnvlist_lookup_nvlist (int *,char*) ;
 char* fnvlist_lookup_string (int *,char*) ;
 int nvlist_free (int *) ;
 int nvlist_lookup_int32 (int *,char*,int*) ;
 int nvlist_lookup_nvlist (int *,char*,int **) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 int nvpair_value_nvlist (int *,int **) ;
 int nvpair_value_string (int *,char**) ;
 int strcspn (char*,char*) ;
 int strlcpy (int ,char*,int) ;
 scalar_t__ zfs_ioctl_version ;

int
lzc_compat_pre(zfs_cmd_t *zc, zfs_ioc_t *ioc, nvlist_t **source)
{
 nvlist_t *nvl = ((void*)0);
 nvpair_t *pair, *hpair;
 char *buf, *val;
 zfs_ioc_t vecnum;
 uint32_t type32;
 int32_t cleanup_fd;
 int error = 0;
 int pos;

 if (zfs_ioctl_version >= ZFS_IOCVER_LZC)
  return (0);

 vecnum = *ioc;

 switch (vecnum) {
 case 133:
  type32 = fnvlist_lookup_int32(*source, "type");
  zc->zc_objset_type = (uint64_t)type32;
  nvlist_lookup_nvlist(*source, "props", &nvl);
  *source = nvl;
 break;
 case 134:
  buf = fnvlist_lookup_string(*source, "origin");
  strlcpy(zc->zc_value, buf, MAXPATHLEN);
  nvlist_lookup_nvlist(*source, "props", &nvl);
  *ioc = 133;
  *source = nvl;
 break;
 case 129:
  nvl = fnvlist_lookup_nvlist(*source, "snaps");
  pair = nvlist_next_nvpair(nvl, ((void*)0));
  if (pair != ((void*)0)) {
   buf = nvpair_name(pair);
   pos = strcspn(buf, "@");
   strlcpy(zc->zc_name, buf, pos + 1);
   strlcpy(zc->zc_value, buf + pos + 1, MAXPATHLEN);
  } else
   error = EINVAL;

  if (!error && nvlist_next_nvpair(nvl, pair) != ((void*)0))
   error = EOPNOTSUPP;
  nvlist_free(nvl);
  nvl = ((void*)0);
  nvlist_lookup_nvlist(*source, "props", &nvl);
  *source = nvl;
 break;
 case 128:
  buf = fnvlist_lookup_string(*source, "firstsnap");
  strlcpy(zc->zc_value, buf, MAXPATHLEN);
 break;
 case 132:
  nvl = fnvlist_lookup_nvlist(*source, "snaps");
  pair = nvlist_next_nvpair(nvl, ((void*)0));
  if (pair != ((void*)0)) {
   buf = nvpair_name(pair);
   pos = strcspn(buf, "@");
   strlcpy(zc->zc_name, buf, pos + 1);
  } else
   error = EINVAL;

  if (!error && nvlist_next_nvpair(nvl, pair) != ((void*)0))
   error = EOPNOTSUPP;
  *source = nvl;
 break;
 case 131:
  nvl = fnvlist_lookup_nvlist(*source, "holds");
  pair = nvlist_next_nvpair(nvl, ((void*)0));
  if (pair != ((void*)0)) {
   buf = nvpair_name(pair);
   pos = strcspn(buf, "@");
   strlcpy(zc->zc_name, buf, pos + 1);
   strlcpy(zc->zc_value, buf + pos + 1, MAXPATHLEN);
   if (nvpair_value_string(pair, &val) == 0)
    strlcpy(zc->zc_string, val, MAXNAMELEN);
   else
    error = EINVAL;
  } else
   error = EINVAL;

  if (!error && nvlist_next_nvpair(nvl, pair) != ((void*)0))
   error = EOPNOTSUPP;
  nvlist_free(nvl);
  if (nvlist_lookup_int32(*source, "cleanup_fd",
      &cleanup_fd) == 0)
   zc->zc_cleanup_fd = cleanup_fd;
  else
   zc->zc_cleanup_fd = -1;
 break;
 case 130:
  pair = nvlist_next_nvpair(*source, ((void*)0));
  if (pair != ((void*)0)) {
   buf = nvpair_name(pair);
   pos = strcspn(buf, "@");
   strlcpy(zc->zc_name, buf, pos + 1);
   strlcpy(zc->zc_value, buf + pos + 1, MAXPATHLEN);
   if (nvpair_value_nvlist(pair, &nvl) == 0) {
    hpair = nvlist_next_nvpair(nvl, ((void*)0));
    if (hpair != ((void*)0))
     strlcpy(zc->zc_string,
         nvpair_name(hpair), MAXNAMELEN);
    else
     error = EINVAL;
    if (!error && nvlist_next_nvpair(nvl,
        hpair) != ((void*)0))
     error = EOPNOTSUPP;
   } else
    error = EINVAL;
  } else
   error = EINVAL;

  if (!error && nvlist_next_nvpair(nvl, pair) != ((void*)0))
   error = EOPNOTSUPP;
 break;
 }

 return (error);
}
