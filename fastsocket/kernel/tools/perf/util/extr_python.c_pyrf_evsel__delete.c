
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pyrf_evsel {TYPE_1__* ob_type; int evsel; } ;
struct TYPE_2__ {int (* tp_free ) (int *) ;} ;
typedef int PyObject ;


 int perf_evsel__exit (int *) ;
 int stub1 (int *) ;

__attribute__((used)) static void pyrf_evsel__delete(struct pyrf_evsel *pevsel)
{
 perf_evsel__exit(&pevsel->evsel);
 pevsel->ob_type->tp_free((PyObject*)pevsel);
}
