
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_pmu {int list; int type; int name; int aliases; int format; int cpus; } ;
typedef int __u32 ;


 int INIT_LIST_HEAD (int *) ;
 int LIST_HEAD (int ) ;
 int aliases ;
 int format ;
 int list_add_tail (int *,int *) ;
 int list_splice (int *,int *) ;
 scalar_t__ pmu_aliases (char*,int *) ;
 int pmu_cpumask (char*) ;
 scalar_t__ pmu_format (char*,int *) ;
 scalar_t__ pmu_type (char*,int *) ;
 int pmus ;
 int strdup (char*) ;
 struct perf_pmu* zalloc (int) ;

__attribute__((used)) static struct perf_pmu *pmu_lookup(char *name)
{
 struct perf_pmu *pmu;
 LIST_HEAD(format);
 LIST_HEAD(aliases);
 __u32 type;






 if (pmu_format(name, &format))
  return ((void*)0);

 if (pmu_aliases(name, &aliases))
  return ((void*)0);

 if (pmu_type(name, &type))
  return ((void*)0);

 pmu = zalloc(sizeof(*pmu));
 if (!pmu)
  return ((void*)0);

 pmu->cpus = pmu_cpumask(name);

 INIT_LIST_HEAD(&pmu->format);
 INIT_LIST_HEAD(&pmu->aliases);
 list_splice(&format, &pmu->format);
 list_splice(&aliases, &pmu->aliases);
 pmu->name = strdup(name);
 pmu->type = type;
 list_add_tail(&pmu->list, &pmus);
 return pmu;
}
