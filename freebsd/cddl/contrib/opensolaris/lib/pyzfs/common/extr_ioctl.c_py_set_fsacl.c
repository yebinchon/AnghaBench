
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t zc_nvlist_src_size; uintptr_t zc_nvlist_src; int zc_perm_action; int zc_name; int member_0; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int nvlist_t ;
typedef int PyObject ;


 int NV_ENCODE_NATIVE ;
 int PyArg_ParseTuple (int *,char*,char**,int*,int *,int **) ;
 int PyDict_Type ;
 int Py_RETURN_NONE ;
 int ZFS_IOC_SET_FSACL ;
 int _ (char*) ;
 int assert (int) ;
 int * dict2nvl (int *) ;
 int free (char*) ;
 int ioctl_with_cmdstr (int ,TYPE_1__*) ;
 char* malloc (size_t) ;
 int nvlist_pack (int *,char**,size_t*,int ,int ) ;
 int nvlist_size (int *,size_t*,int ) ;
 int seterr (int ,char*) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static PyObject *
py_set_fsacl(PyObject *self, PyObject *args)
{
 int un;
 size_t nvsz;
 zfs_cmd_t zc = { 0 };
 char *name, *nvbuf;
 PyObject *dict, *file;
 nvlist_t *nvl;
 int err;

 if (!PyArg_ParseTuple(args, "siO!", &name, &un,
     &PyDict_Type, &dict))
  return (((void*)0));

 nvl = dict2nvl(dict);
 if (nvl == ((void*)0))
  return (((void*)0));

 err = nvlist_size(nvl, &nvsz, NV_ENCODE_NATIVE);
 assert(err == 0);
 nvbuf = malloc(nvsz);
 err = nvlist_pack(nvl, &nvbuf, &nvsz, NV_ENCODE_NATIVE, 0);
 assert(err == 0);

 (void) strlcpy(zc.zc_name, name, sizeof (zc.zc_name));
 zc.zc_nvlist_src_size = nvsz;
 zc.zc_nvlist_src = (uintptr_t)nvbuf;
 zc.zc_perm_action = un;

 err = ioctl_with_cmdstr(ZFS_IOC_SET_FSACL, &zc);
 free(nvbuf);
 if (err) {
  seterr(_("cannot set permissions on %s"), name);
  return (((void*)0));
 }

 Py_RETURN_NONE;
}
