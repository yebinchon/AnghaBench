
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int PyCallable_Check (int *) ;
 int * PyDict_GetItemString (int ,char*) ;
 int * PyObject_CallObject (int *,int *) ;
 int Py_DECREF (int *) ;
 int Py_Finalize () ;
 int Py_XDECREF (int ) ;
 int handler_call_die (char*) ;
 int main_dict ;
 int main_module ;

__attribute__((used)) static int python_stop_script(void)
{
 PyObject *handler, *retval;
 int err = 0;

 handler = PyDict_GetItemString(main_dict, "trace_end");
 if (handler == ((void*)0) || !PyCallable_Check(handler))
  goto out;

 retval = PyObject_CallObject(handler, ((void*)0));
 if (retval == ((void*)0))
  handler_call_die("trace_end");
 else
  Py_DECREF(retval);
out:
 Py_XDECREF(main_dict);
 Py_XDECREF(main_module);
 Py_Finalize();

 return err;
}
