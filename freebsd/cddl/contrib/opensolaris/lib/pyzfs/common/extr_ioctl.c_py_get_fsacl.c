
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zc_name; int member_0; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int PyObject ;


 int PyArg_ParseTuple (int *,char*,char**) ;
 int ZFS_IOC_GET_FSACL ;
 int _ (char*) ;
 int * ioctl_with_dstnv (int ,TYPE_1__*) ;
 int seterr (int ,char*) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static PyObject *
py_get_fsacl(PyObject *self, PyObject *args)
{
 zfs_cmd_t zc = { 0 };
 char *name;
 PyObject *nvl;

 if (!PyArg_ParseTuple(args, "s", &name))
  return (((void*)0));

 (void) strlcpy(zc.zc_name, name, sizeof (zc.zc_name));

 nvl = ioctl_with_dstnv(ZFS_IOC_GET_FSACL, &zc);
 if (nvl == ((void*)0))
  seterr(_("cannot get permissions on %s"), name);

 return (nvl);
}
