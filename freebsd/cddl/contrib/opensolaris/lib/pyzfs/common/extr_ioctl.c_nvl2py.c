
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* uint64_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef char* boolean_t ;
typedef int PyObject ;







 int * PyDict_New () ;
 int PyDict_SetItemString (int *,int ,int *) ;
 int PyErr_SetNone (int ) ;
 int PyExc_ValueError ;
 int * Py_BuildValue (char*,char*) ;
 int Py_DECREF (int *) ;
 int Py_INCREF (int *) ;
 int * Py_None ;
 int * nvlist_next_nvpair (int *,int *) ;
 int nvpair_name (int *) ;
 int nvpair_type (int *) ;
 int nvpair_value_boolean_value (int *,char**) ;
 int nvpair_value_nvlist (int *,int **) ;
 int nvpair_value_string (int *,char**) ;
 int nvpair_value_uint64 (int *,char**) ;

__attribute__((used)) static PyObject *
nvl2py(nvlist_t *nvl)
{
 PyObject *pyo;
 nvpair_t *nvp;

 pyo = PyDict_New();

 for (nvp = nvlist_next_nvpair(nvl, ((void*)0)); nvp;
     nvp = nvlist_next_nvpair(nvl, nvp)) {
  PyObject *pyval;
  char *sval;
  uint64_t ival;
  boolean_t bval;
  nvlist_t *nval;

  switch (nvpair_type(nvp)) {
  case 129:
   (void) nvpair_value_string(nvp, &sval);
   pyval = Py_BuildValue("s", sval);
   break;

  case 128:
   (void) nvpair_value_uint64(nvp, &ival);
   pyval = Py_BuildValue("K", ival);
   break;

  case 130:
   (void) nvpair_value_nvlist(nvp, &nval);
   pyval = nvl2py(nval);
   break;

  case 132:
   Py_INCREF(Py_None);
   pyval = Py_None;
   break;

  case 131:
   (void) nvpair_value_boolean_value(nvp, &bval);
   pyval = Py_BuildValue("i", bval);
   break;

  default:
   PyErr_SetNone(PyExc_ValueError);
   Py_DECREF(pyo);
   return (((void*)0));
  }

  PyDict_SetItemString(pyo, nvpair_name(nvp), pyval);
  Py_DECREF(pyval);
 }

 return (pyo);
}
