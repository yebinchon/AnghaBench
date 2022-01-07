
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;


 int NV_ENCODE_NATIVE ;
 scalar_t__ nvlist_pack (int *,char**,size_t*,int ,int ) ;
 scalar_t__ nvlist_size (int *,size_t*,int ) ;
 int verify (int) ;
 char* zfs_alloc (int *,size_t) ;

__attribute__((used)) static int
zcmd_write_nvlist_com(libzfs_handle_t *hdl, uint64_t *outnv, uint64_t *outlen,
    nvlist_t *nvl)
{
 char *packed;
 size_t len;

 verify(nvlist_size(nvl, &len, NV_ENCODE_NATIVE) == 0);

 if ((packed = zfs_alloc(hdl, len)) == ((void*)0))
  return (-1);

 verify(nvlist_pack(nvl, &packed, &len, NV_ENCODE_NATIVE, 0) == 0);

 *outnv = (uint64_t)(uintptr_t)packed;
 *outlen = len;

 return (0);
}
