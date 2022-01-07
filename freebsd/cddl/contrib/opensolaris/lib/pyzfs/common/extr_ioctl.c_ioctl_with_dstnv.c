
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zc_nvlist_dst_size; uintptr_t zc_nvlist_dst; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int nvlist_t ;
typedef int PyObject ;


 scalar_t__ ENOMEM ;
 scalar_t__ errno ;
 int free (void*) ;
 scalar_t__ ioctl (int ,int,TYPE_1__*) ;
 void* malloc (int) ;
 int * nvl2py (int *) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_unpack (void*,int,int **,int ) ;
 int zfsdevfd ;

__attribute__((used)) static PyObject *
ioctl_with_dstnv(int ioc, zfs_cmd_t *zc)
{
 int nvsz = 2048;
 void *nvbuf;
 PyObject *pynv = ((void*)0);

again:
 nvbuf = malloc(nvsz);
 zc->zc_nvlist_dst_size = nvsz;
 zc->zc_nvlist_dst = (uintptr_t)nvbuf;

 if (ioctl(zfsdevfd, ioc, zc) == 0) {
  nvlist_t *nvl;

  errno = nvlist_unpack(nvbuf, zc->zc_nvlist_dst_size, &nvl, 0);
  if (errno == 0) {
   pynv = nvl2py(nvl);
   nvlist_free(nvl);
  }
 } else if (errno == ENOMEM) {
  free(nvbuf);
  nvsz = zc->zc_nvlist_dst_size;
  goto again;
 }
 free(nvbuf);
 return (pynv);
}
