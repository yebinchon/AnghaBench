
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_map {int nr; int * map; } ;
typedef int FILE ;


 size_t fprintf (int *,char*,...) ;

size_t thread_map__fprintf(struct thread_map *threads, FILE *fp)
{
 int i;
 size_t printed = fprintf(fp, "%d thread%s: ",
     threads->nr, threads->nr > 1 ? "s" : "");
 for (i = 0; i < threads->nr; ++i)
  printed += fprintf(fp, "%s%d", i ? ", " : "", threads->map[i]);

 return printed + fprintf(fp, "\n");
}
