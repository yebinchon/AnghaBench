
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int internal_error (char*,char const*,int ,int) ;
 int trim_filename (char const*) ;

void
fancy_abort (const char *file, int line, const char *func)
{
  internal_error ("abort in %s, at %s:%d", func, trim_filename (file), line);
}
