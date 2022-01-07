
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct id {int sequence; struct id* next; } ;
typedef int FILE ;


 int fprintf (int *,char*,char const*,int) ;

__attribute__((used)) static void
write_list (FILE *stream, const char *prefix, struct id *list)
{
  while (list)
    {
      fprintf (stream, "%sx%d,\n", prefix, list->sequence);
      list = list->next;
    }
}
