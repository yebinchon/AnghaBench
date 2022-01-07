
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union perf_event {int dummy; } perf_event ;
struct perf_evlist {int dummy; } ;
struct pyrf_evlist {struct perf_evlist evlist; } ;
struct pyrf_event {int sample; } ;
typedef int PyObject ;


 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,int*,int*) ;
 int * PyErr_Format (int ,char*,int) ;
 int * PyErr_NoMemory () ;
 int PyExc_OSError ;
 int Py_INCREF (int *) ;
 int * Py_None ;
 union perf_event* perf_evlist__mmap_read (struct perf_evlist*,int) ;
 int perf_evlist__parse_sample (struct perf_evlist*,union perf_event*,int *) ;
 int * pyrf_event__new (union perf_event*) ;

__attribute__((used)) static PyObject *pyrf_evlist__read_on_cpu(struct pyrf_evlist *pevlist,
       PyObject *args, PyObject *kwargs)
{
 struct perf_evlist *evlist = &pevlist->evlist;
 union perf_event *event;
 int sample_id_all = 1, cpu;
 static char *kwlist[] = { "cpu", "sample_id_all", ((void*)0) };
 int err;

 if (!PyArg_ParseTupleAndKeywords(args, kwargs, "i|i", kwlist,
      &cpu, &sample_id_all))
  return ((void*)0);

 event = perf_evlist__mmap_read(evlist, cpu);
 if (event != ((void*)0)) {
  PyObject *pyevent = pyrf_event__new(event);
  struct pyrf_event *pevent = (struct pyrf_event *)pyevent;

  if (pyevent == ((void*)0))
   return PyErr_NoMemory();

  err = perf_evlist__parse_sample(evlist, event, &pevent->sample);
  if (err)
   return PyErr_Format(PyExc_OSError,
         "perf: can't parse sample, err=%d", err);
  return pyevent;
 }

 Py_INCREF(Py_None);
 return Py_None;
}
