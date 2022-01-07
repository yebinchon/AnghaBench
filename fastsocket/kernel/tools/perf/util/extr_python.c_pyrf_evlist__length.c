
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr_entries; } ;
struct pyrf_evlist {TYPE_1__ evlist; } ;
typedef int Py_ssize_t ;
typedef int PyObject ;



__attribute__((used)) static Py_ssize_t pyrf_evlist__length(PyObject *obj)
{
 struct pyrf_evlist *pevlist = (void *)obj;

 return pevlist->evlist.nr_entries;
}
