
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct excluded_lib {char* name; struct excluded_lib* next; } ;


 struct excluded_lib* excluded_libs ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;
 char* strpbrk (char const*,char*) ;
 void* xmalloc (int) ;

void
add_excluded_libs (const char *list)
{
  const char *p = list, *end;

  while (*p != '\0')
    {
      struct excluded_lib *entry;
      end = strpbrk (p, ",:");
      if (end == ((void*)0))
 end = p + strlen (p);
      entry = xmalloc (sizeof (*entry));
      entry->next = excluded_libs;
      entry->name = xmalloc (end - p + 1);
      memcpy (entry->name, p, end - p);
      entry->name[end - p] = '\0';
      excluded_libs = entry;
      if (*end == '\0')
 break;
      p = end + 1;
    }
}
