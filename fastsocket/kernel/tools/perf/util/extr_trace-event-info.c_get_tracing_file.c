
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* find_tracing_dir () ;
 char* malloc_or_die (scalar_t__) ;
 int sprintf (char*,char*,char const*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static char *get_tracing_file(const char *name)
{
 const char *tracing;
 char *file;

 tracing = find_tracing_dir();
 if (!tracing)
  return ((void*)0);

 file = malloc_or_die(strlen(tracing) + strlen(name) + 2);

 sprintf(file, "%s/%s", tracing, name);
 return file;
}
