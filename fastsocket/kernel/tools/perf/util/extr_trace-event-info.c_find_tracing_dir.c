
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* find_debugfs () ;
 char* malloc_or_die (scalar_t__) ;
 int sprintf (char*,char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static const char *find_tracing_dir(void)
{
 static char *tracing;
 static int tracing_found;
 const char *debugfs;

 if (tracing_found)
  return tracing;

 debugfs = find_debugfs();

 tracing = malloc_or_die(strlen(debugfs) + 9);

 sprintf(tracing, "%s/tracing", debugfs);

 tracing_found = 1;
 return tracing;
}
