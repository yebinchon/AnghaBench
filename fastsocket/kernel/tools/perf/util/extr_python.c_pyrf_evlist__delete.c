
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pyrf_evlist {TYPE_1__* ob_type; int evlist; } ;
struct TYPE_2__ {int (* tp_free ) (int *) ;} ;
typedef int PyObject ;


 int perf_evlist__exit (int *) ;
 int stub1 (int *) ;

__attribute__((used)) static void pyrf_evlist__delete(struct pyrf_evlist *pevlist)
{
 perf_evlist__exit(&pevlist->evlist);
 pevlist->ob_type->tp_free((PyObject*)pevlist);
}
