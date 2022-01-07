
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int * PyImport_ImportModule (char*) ;
 int PyObject_AsFileDescriptor (int *) ;
 void* PyObject_GetAttrString (int *,char*) ;
 int * Py_InitModule (char*,int ) ;
 void* ZFSError ;
 int zfs_prop_init () ;
 int zfsdevfd ;
 int zfsmethods ;

void
initioctl(void)
{
 PyObject *zfs_ioctl = Py_InitModule("zfs.ioctl", zfsmethods);
 PyObject *zfs_util = PyImport_ImportModule("zfs.util");
 PyObject *devfile;

 if (zfs_util == ((void*)0))
  return;

 ZFSError = PyObject_GetAttrString(zfs_util, "ZFSError");
 devfile = PyObject_GetAttrString(zfs_util, "dev");
 zfsdevfd = PyObject_AsFileDescriptor(devfile);

 zfs_prop_init();
}
