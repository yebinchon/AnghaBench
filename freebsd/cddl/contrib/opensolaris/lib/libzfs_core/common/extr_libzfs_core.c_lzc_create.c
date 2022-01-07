
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef enum lzc_dataset_type { ____Placeholder_lzc_dataset_type } lzc_dataset_type ;
typedef int dmu_objset_type_t ;


 int ZFS_IOC_CREATE ;
 int fnvlist_add_int32 (int *,char*,int ) ;
 int fnvlist_add_nvlist (int *,char*,int *) ;
 int * fnvlist_alloc () ;
 int lzc_ioctl (int ,char const*,int *,int *) ;
 int nvlist_free (int *) ;

int
lzc_create(const char *fsname, enum lzc_dataset_type type, nvlist_t *props)
{
 int error;
 nvlist_t *args = fnvlist_alloc();
 fnvlist_add_int32(args, "type", (dmu_objset_type_t)type);
 if (props != ((void*)0))
  fnvlist_add_nvlist(args, "props", props);
 error = lzc_ioctl(ZFS_IOC_CREATE, fsname, args, ((void*)0));
 nvlist_free(args);
 return (error);
}
