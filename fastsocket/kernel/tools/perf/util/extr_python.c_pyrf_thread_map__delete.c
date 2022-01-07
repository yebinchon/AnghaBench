
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pyrf_thread_map {TYPE_1__* ob_type; int threads; } ;
struct TYPE_2__ {int (* tp_free ) (int *) ;} ;
typedef int PyObject ;


 int stub1 (int *) ;
 int thread_map__delete (int ) ;

__attribute__((used)) static void pyrf_thread_map__delete(struct pyrf_thread_map *pthreads)
{
 thread_map__delete(pthreads->threads);
 pthreads->ob_type->tp_free((PyObject*)pthreads);
}
