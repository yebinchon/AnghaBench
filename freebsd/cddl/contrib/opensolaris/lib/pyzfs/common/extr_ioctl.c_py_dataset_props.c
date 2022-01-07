
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zc_name; int member_0; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int PyObject ;


 int PyArg_ParseTuple (int *,char*,char**) ;
 int ZFS_IOC_OBJSET_STATS ;
 int _ (char*) ;
 int add_ds_props (TYPE_1__*,int *) ;
 int * ioctl_with_dstnv (int ,TYPE_1__*) ;
 int seterr (int ,char*) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static PyObject *
py_dataset_props(PyObject *self, PyObject *args)
{
 zfs_cmd_t zc = { 0 };
 int snaps;
 char *name;
 PyObject *nvl;

 if (!PyArg_ParseTuple(args, "s", &name))
  return (((void*)0));

 (void) strlcpy(zc.zc_name, name, sizeof (zc.zc_name));

 nvl = ioctl_with_dstnv(ZFS_IOC_OBJSET_STATS, &zc);
 if (nvl) {
  add_ds_props(&zc, nvl);
 } else {
  seterr(_("cannot access dataset %s"), name);
 }
 return (nvl);
}
