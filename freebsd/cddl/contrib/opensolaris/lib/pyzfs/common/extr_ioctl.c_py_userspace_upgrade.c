
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zc_name; int member_0; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int PyObject ;


 int PyArg_ParseTuple (int *,char*,char**) ;
 int Py_RETURN_NONE ;
 int ZFS_IOC_USERSPACE_UPGRADE ;
 int _ (char*) ;
 int ioctl (int ,int ,TYPE_1__*) ;
 int seterr (int ,char*) ;
 int strlcpy (int ,char*,int) ;
 int zfsdevfd ;

__attribute__((used)) static PyObject *
py_userspace_upgrade(PyObject *self, PyObject *args)
{
 zfs_cmd_t zc = { 0 };
 char *name;
 int error;

 if (!PyArg_ParseTuple(args, "s", &name))
  return (((void*)0));

 (void) strlcpy(zc.zc_name, name, sizeof (zc.zc_name));
 error = ioctl(zfsdevfd, ZFS_IOC_USERSPACE_UPGRADE, &zc);

 if (error != 0) {
  seterr(_("cannot initialize user accounting information on %s"),
      name);
  return (((void*)0));
 }

 Py_RETURN_NONE;
}
