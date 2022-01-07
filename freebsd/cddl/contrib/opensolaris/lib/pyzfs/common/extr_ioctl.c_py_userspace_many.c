
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t zfs_userquota_prop_t ;
struct TYPE_4__ {int zu_space; int zu_rid; int zu_domain; } ;
typedef TYPE_1__ zfs_useracct_t ;
struct TYPE_5__ {size_t zc_objset_type; uintptr_t zc_nvlist_dst; int zc_nvlist_dst_size; scalar_t__ zc_cookie; int zc_name; int member_0; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef int PyObject ;


 int PyArg_ParseTuple (int *,char*,char**,char**) ;
 int * PyDict_New () ;
 int PyDict_SetItem (int *,int *,int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_KeyError ;
 int * Py_BuildValue (char*,int ,...) ;
 int Py_DECREF (int *) ;
 int ZFS_IOC_USERSPACE_MANY ;
 size_t ZFS_NUM_USERQUOTA_PROPS ;
 int _ (char*) ;
 int free (void*) ;
 int ioctl (int ,int ,TYPE_2__*) ;
 void* malloc (int) ;
 int seterr (int ,char*,char*) ;
 scalar_t__ strcmp (char*,int ) ;
 int strlcpy (int ,char*,int) ;
 int * zfs_userquota_prop_prefixes ;
 int zfsdevfd ;

__attribute__((used)) static PyObject *
py_userspace_many(PyObject *self, PyObject *args)
{
 zfs_cmd_t zc = { 0 };
 zfs_userquota_prop_t type;
 char *name, *propname;
 int bufsz = 1<<20;
 void *buf;
 PyObject *dict, *file;
 int error;

 if (!PyArg_ParseTuple(args, "ss", &name, &propname))
  return (((void*)0));

 for (type = 0; type < ZFS_NUM_USERQUOTA_PROPS; type++)
  if (strcmp(propname, zfs_userquota_prop_prefixes[type]) == 0)
   break;
 if (type == ZFS_NUM_USERQUOTA_PROPS) {
  PyErr_SetString(PyExc_KeyError, propname);
  return (((void*)0));
 }

 dict = PyDict_New();
 buf = malloc(bufsz);

 (void) strlcpy(zc.zc_name, name, sizeof (zc.zc_name));
 zc.zc_objset_type = type;
 zc.zc_cookie = 0;

 while (1) {
  zfs_useracct_t *zua = buf;

  zc.zc_nvlist_dst = (uintptr_t)buf;
  zc.zc_nvlist_dst_size = bufsz;

  error = ioctl(zfsdevfd, ZFS_IOC_USERSPACE_MANY, &zc);
  if (error || zc.zc_nvlist_dst_size == 0)
   break;

  while (zc.zc_nvlist_dst_size > 0) {
   PyObject *pykey, *pyval;

   pykey = Py_BuildValue("sI",
       zua->zu_domain, zua->zu_rid);
   pyval = Py_BuildValue("K", zua->zu_space);
   PyDict_SetItem(dict, pykey, pyval);
   Py_DECREF(pykey);
   Py_DECREF(pyval);

   zua++;
   zc.zc_nvlist_dst_size -= sizeof (zfs_useracct_t);
  }
 }

 free(buf);

 if (error != 0) {
  Py_DECREF(dict);
  seterr(_("cannot get %s property on %s"), propname, name);
  return (((void*)0));
 }

 return (dict);
}
