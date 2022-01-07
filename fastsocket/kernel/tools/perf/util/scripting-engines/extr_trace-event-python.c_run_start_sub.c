
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int PyCallable_Check (int *) ;
 int * PyDict_GetItemString (int *,char*) ;
 int * PyImport_AddModule (char*) ;
 int * PyModule_GetDict (int *) ;
 int * PyObject_CallObject (int *,int *) ;
 int Py_DECREF (int *) ;
 int Py_INCREF (int *) ;
 int Py_XDECREF (int *) ;
 int handler_call_die (char*) ;
 int * main_dict ;
 int * main_module ;

__attribute__((used)) static int run_start_sub(void)
{
 PyObject *handler, *retval;
 int err = 0;

 main_module = PyImport_AddModule("__main__");
 if (main_module == ((void*)0))
  return -1;
 Py_INCREF(main_module);

 main_dict = PyModule_GetDict(main_module);
 if (main_dict == ((void*)0)) {
  err = -1;
  goto error;
 }
 Py_INCREF(main_dict);

 handler = PyDict_GetItemString(main_dict, "trace_begin");
 if (handler == ((void*)0) || !PyCallable_Check(handler))
  goto out;

 retval = PyObject_CallObject(handler, ((void*)0));
 if (retval == ((void*)0))
  handler_call_die("trace_begin");

 Py_DECREF(retval);
 return err;
error:
 Py_XDECREF(main_dict);
 Py_XDECREF(main_module);
out:
 return err;
}
