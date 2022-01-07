
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int ZFS_IOC_CLONE ;
 int fnvlist_add_nvlist (int *,char*,int *) ;
 int fnvlist_add_string (int *,char*,char const*) ;
 int * fnvlist_alloc () ;
 int lzc_ioctl (int ,char const*,int *,int *) ;
 int nvlist_free (int *) ;

int
lzc_clone(const char *fsname, const char *origin,
    nvlist_t *props)
{
 int error;
 nvlist_t *args = fnvlist_alloc();
 fnvlist_add_string(args, "origin", origin);
 if (props != ((void*)0))
  fnvlist_add_nvlist(args, "props", props);
 error = lzc_ioctl(ZFS_IOC_CLONE, fsname, args, ((void*)0));
 nvlist_free(args);
 return (error);
}
