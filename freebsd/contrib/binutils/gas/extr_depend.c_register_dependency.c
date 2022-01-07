
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dependency {struct dependency* next; int file; } ;


 struct dependency* dep_chain ;
 int * dep_file ;
 int strcmp (char*,int ) ;
 scalar_t__ xmalloc (int) ;
 int xstrdup (char*) ;

void
register_dependency (char *filename)
{
  struct dependency *dep;

  if (dep_file == ((void*)0))
    return;

  for (dep = dep_chain; dep != ((void*)0); dep = dep->next)
    {
      if (!strcmp (filename, dep->file))
 return;
    }

  dep = (struct dependency *) xmalloc (sizeof (struct dependency));
  dep->file = xstrdup (filename);
  dep->next = dep_chain;
  dep_chain = dep;
}
