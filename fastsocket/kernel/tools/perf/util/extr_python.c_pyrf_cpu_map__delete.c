
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pyrf_cpu_map {TYPE_1__* ob_type; int cpus; } ;
struct TYPE_2__ {int (* tp_free ) (int *) ;} ;
typedef int PyObject ;


 int cpu_map__delete (int ) ;
 int stub1 (int *) ;

__attribute__((used)) static void pyrf_cpu_map__delete(struct pyrf_cpu_map *pcpus)
{
 cpu_map__delete(pcpus->cpus);
 pcpus->ob_type->tp_free((PyObject*)pcpus);
}
