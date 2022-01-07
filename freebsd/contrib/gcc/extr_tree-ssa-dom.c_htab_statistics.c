
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int htab_t ;
typedef int FILE ;


 int fprintf (int *,char*,long,long,int ) ;
 int htab_collisions (int ) ;
 scalar_t__ htab_elements (int ) ;
 scalar_t__ htab_size (int ) ;

__attribute__((used)) static void
htab_statistics (FILE *file, htab_t htab)
{
  fprintf (file, "size %ld, %ld elements, %f collision/search ratio\n",
    (long) htab_size (htab),
    (long) htab_elements (htab),
    htab_collisions (htab));
}
