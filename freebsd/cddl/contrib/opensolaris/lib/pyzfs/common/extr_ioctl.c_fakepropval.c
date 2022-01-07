
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int PyObject ;


 int * PyDict_New () ;
 int PyDict_SetItemString (int *,char*,int ) ;
 int Py_BuildValue (char*,int ) ;

__attribute__((used)) static PyObject *
fakepropval(uint64_t value)
{
 PyObject *d = PyDict_New();
 PyDict_SetItemString(d, "value", Py_BuildValue("K", value));
 return (d);
}
