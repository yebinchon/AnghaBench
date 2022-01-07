
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyMODINIT_FUNC ;


 int ContextMethods ;
 int Py_InitModule (char*,int ) ;

PyMODINIT_FUNC initperf_trace_context(void)
{
 (void) Py_InitModule("perf_trace_context", ContextMethods);
}
