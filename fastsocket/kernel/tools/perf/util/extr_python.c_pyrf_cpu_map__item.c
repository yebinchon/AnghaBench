
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pyrf_cpu_map {TYPE_1__* cpus; } ;
struct TYPE_2__ {size_t nr; int * map; } ;
typedef size_t Py_ssize_t ;
typedef int PyObject ;


 int * Py_BuildValue (char*,int ) ;

__attribute__((used)) static PyObject *pyrf_cpu_map__item(PyObject *obj, Py_ssize_t i)
{
 struct pyrf_cpu_map *pcpus = (void *)obj;

 if (i >= pcpus->cpus->nr)
  return ((void*)0);

 return Py_BuildValue("i", pcpus->cpus->map[i]);
}
