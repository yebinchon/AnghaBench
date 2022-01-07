
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ at_end; scalar_t__ linenum; scalar_t__ pos; int filename; struct TYPE_5__* next; } ;
typedef TYPE_1__ file_info_type ;


 TYPE_1__* file_info_head ;
 scalar_t__ strcmp (int ,char const*) ;
 TYPE_1__* xmalloc (int) ;
 int xstrdup (char const*) ;

__attribute__((used)) static file_info_type *
file_info (const char *file_name)
{

  file_info_type *p = file_info_head;

  while (p != (file_info_type *) ((void*)0))
    {
      if (strcmp (p->filename, file_name) == 0)
 return p;
      p = p->next;
    }


  p = xmalloc (sizeof (file_info_type));
  p->next = file_info_head;
  file_info_head = p;
  p->filename = xstrdup (file_name);
  p->pos = 0;
  p->linenum = 0;
  p->at_end = 0;

  return p;
}
