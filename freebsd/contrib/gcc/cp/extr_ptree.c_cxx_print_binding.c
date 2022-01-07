
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cxx_binding ;
typedef int FILE ;


 int fprintf (int *,char*,char const*,void*) ;

__attribute__((used)) static void
cxx_print_binding (FILE *stream, cxx_binding *binding, const char *prefix)
{
  fprintf (stream, "%s <%p>",
    prefix, (void *) binding);
}
