
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int nvlist_t ;
typedef int boolean_t ;
typedef int PyObject ;


 int B_FALSE ;
 int B_TRUE ;
 int NV_UNIQUE_NAME ;
 scalar_t__ PyBool_Check (int *) ;
 scalar_t__ PyDict_Check (int *) ;
 scalar_t__ PyDict_Next (int *,int*,int **,int **) ;
 int PyErr_SetObject (int ,int *) ;
 int PyExc_KeyError ;
 int PyExc_ValueError ;
 int PyInt_AsUnsignedLongLongMask (int *) ;
 scalar_t__ PyInt_Check (int *) ;
 char* PyString_AsString (int *) ;
 scalar_t__ PyString_Check (int *) ;
 int * Py_None ;
 int * Py_True ;
 int assert (int) ;
 int nvlist_add_boolean (int *,char*) ;
 int nvlist_add_boolean_value (int *,char*,int ) ;
 int nvlist_add_nvlist (int *,char*,int *) ;
 int nvlist_add_string (int *,char*,char*) ;
 int nvlist_add_uint64 (int *,char*,int ) ;
 int nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;

__attribute__((used)) static nvlist_t *
dict2nvl(PyObject *d)
{
 nvlist_t *nvl;
 int err;
 PyObject *key, *value;
 int pos = 0;

 if (!PyDict_Check(d)) {
  PyErr_SetObject(PyExc_ValueError, d);
  return (((void*)0));
 }

 err = nvlist_alloc(&nvl, NV_UNIQUE_NAME, 0);
 assert(err == 0);

 while (PyDict_Next(d, &pos, &key, &value)) {
  char *keystr = PyString_AsString(key);
  if (keystr == ((void*)0)) {
   PyErr_SetObject(PyExc_KeyError, key);
   nvlist_free(nvl);
   return (((void*)0));
  }

  if (PyDict_Check(value)) {
   nvlist_t *valnvl = dict2nvl(value);
   err = nvlist_add_nvlist(nvl, keystr, valnvl);
   nvlist_free(valnvl);
  } else if (value == Py_None) {
   err = nvlist_add_boolean(nvl, keystr);
  } else if (PyString_Check(value)) {
   char *valstr = PyString_AsString(value);
   err = nvlist_add_string(nvl, keystr, valstr);
  } else if (PyInt_Check(value)) {
   uint64_t valint = PyInt_AsUnsignedLongLongMask(value);
   err = nvlist_add_uint64(nvl, keystr, valint);
  } else if (PyBool_Check(value)) {
   boolean_t valbool = value == Py_True ? B_TRUE : B_FALSE;
   err = nvlist_add_boolean_value(nvl, keystr, valbool);
  } else {
   PyErr_SetObject(PyExc_ValueError, value);
   nvlist_free(nvl);
   return (((void*)0));
  }
  assert(err == 0);
 }

 return (nvl);
}
