
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omp_region {int type; struct omp_region* next; struct omp_region* inner; } ;
 int expand_omp_for (struct omp_region*) ;
 int expand_omp_parallel (struct omp_region*) ;
 int expand_omp_sections (struct omp_region*) ;
 int expand_omp_single (struct omp_region*) ;
 int expand_omp_synch (struct omp_region*) ;
 int gcc_unreachable () ;

__attribute__((used)) static void
expand_omp (struct omp_region *region)
{
  while (region)
    {
      if (region->inner)
 expand_omp (region->inner);

      switch (region->type)
 {
 case 131:
   expand_omp_parallel (region);
   break;

 case 134:
   expand_omp_for (region);
   break;

 case 129:
   expand_omp_sections (region);
   break;

 case 130:


   break;

 case 128:
   expand_omp_single (region);
   break;

 case 133:
 case 132:
 case 135:
   expand_omp_synch (region);
   break;

 default:
   gcc_unreachable ();
 }

      region = region->next;
    }
}
