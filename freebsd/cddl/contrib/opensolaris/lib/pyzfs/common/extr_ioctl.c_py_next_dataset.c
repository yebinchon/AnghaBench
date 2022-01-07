
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zc_cookie; int zc_name; int member_0; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int uint64_t ;
typedef int PyObject ;


 scalar_t__ ESRCH ;
 int PyArg_ParseTuple (int *,char*,char**,int*,int *) ;
 int PyErr_SetNone (int ) ;
 int PyExc_StopIteration ;
 int * Py_BuildValue (char*,int ,int ,int *) ;
 int Py_DECREF (int *) ;
 int ZFS_IOC_DATASET_LIST_NEXT ;
 int ZFS_IOC_SNAPSHOT_LIST_NEXT ;
 int _ (char*) ;
 int add_ds_props (TYPE_1__*,int *) ;
 scalar_t__ errno ;
 int * ioctl_with_dstnv (int,TYPE_1__*) ;
 int seterr (int ,char*) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static PyObject *
py_next_dataset(PyObject *self, PyObject *args)
{
 int ioc;
 uint64_t cookie;
 zfs_cmd_t zc = { 0 };
 int snaps;
 char *name;
 PyObject *nvl;
 PyObject *ret = ((void*)0);

 if (!PyArg_ParseTuple(args, "siK", &name, &snaps, &cookie))
  return (((void*)0));

 (void) strlcpy(zc.zc_name, name, sizeof (zc.zc_name));
 zc.zc_cookie = cookie;

 if (snaps)
  ioc = ZFS_IOC_SNAPSHOT_LIST_NEXT;
 else
  ioc = ZFS_IOC_DATASET_LIST_NEXT;

 nvl = ioctl_with_dstnv(ioc, &zc);
 if (nvl) {
  add_ds_props(&zc, nvl);
  ret = Py_BuildValue("sKO", zc.zc_name, zc.zc_cookie, nvl);
  Py_DECREF(nvl);
 } else if (errno == ESRCH) {
  PyErr_SetNone(PyExc_StopIteration);
 } else {
  if (snaps)
   seterr(_("cannot get snapshots of %s"), name);
  else
   seterr(_("cannot get child datasets of %s"), name);
 }
 return (ret);
}
