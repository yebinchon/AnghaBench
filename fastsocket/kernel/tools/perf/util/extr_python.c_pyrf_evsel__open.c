
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_map {int dummy; } ;
struct pyrf_thread_map {struct thread_map* threads; } ;
struct TYPE_2__ {int inherit; } ;
struct perf_evsel {TYPE_1__ attr; } ;
struct pyrf_evsel {struct perf_evsel evsel; } ;
struct pyrf_cpu_map {struct cpu_map* cpus; } ;
struct cpu_map {int dummy; } ;
typedef int PyObject ;


 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,int **,int **,int*,int*) ;
 int PyErr_SetFromErrno (int ) ;
 int PyExc_OSError ;
 int Py_INCREF (int *) ;
 int * Py_None ;
 scalar_t__ perf_evsel__open (struct perf_evsel*,struct cpu_map*,struct thread_map*) ;

__attribute__((used)) static PyObject *pyrf_evsel__open(struct pyrf_evsel *pevsel,
      PyObject *args, PyObject *kwargs)
{
 struct perf_evsel *evsel = &pevsel->evsel;
 struct cpu_map *cpus = ((void*)0);
 struct thread_map *threads = ((void*)0);
 PyObject *pcpus = ((void*)0), *pthreads = ((void*)0);
 int group = 0, inherit = 0;
 static char *kwlist[] = { "cpus", "threads", "group", "inherit", ((void*)0) };

 if (!PyArg_ParseTupleAndKeywords(args, kwargs, "|OOii", kwlist,
      &pcpus, &pthreads, &group, &inherit))
  return ((void*)0);

 if (pthreads != ((void*)0))
  threads = ((struct pyrf_thread_map *)pthreads)->threads;

 if (pcpus != ((void*)0))
  cpus = ((struct pyrf_cpu_map *)pcpus)->cpus;

 evsel->attr.inherit = inherit;




 if (perf_evsel__open(evsel, cpus, threads) < 0) {
  PyErr_SetFromErrno(PyExc_OSError);
  return ((void*)0);
 }

 Py_INCREF(Py_None);
 return Py_None;
}
