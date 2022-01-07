
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_table {int dummy; } ;
struct macro_definition {int kind; int argc; int argv; void* replacement; struct macro_table* table; } ;
typedef enum macro_kind { ____Placeholder_macro_kind } macro_kind ;


 char** alloca (int) ;
 struct macro_definition* macro_alloc (int,struct macro_table*) ;
 int macro_bcache (struct macro_table*,char const**,int) ;
 void* macro_bcache_str (struct macro_table*,char const*) ;
 int macro_function_like ;
 int memset (struct macro_definition*,int ,int) ;

__attribute__((used)) static struct macro_definition *
new_macro_definition (struct macro_table *t,
                      enum macro_kind kind,
                      int argc, const char **argv,
                      const char *replacement)
{
  struct macro_definition *d = macro_alloc (sizeof (*d), t);

  memset (d, 0, sizeof (*d));
  d->table = t;
  d->kind = kind;
  d->replacement = macro_bcache_str (t, replacement);

  if (kind == macro_function_like)
    {
      int i;
      const char **cached_argv;
      int cached_argv_size = argc * sizeof (*cached_argv);


      cached_argv = alloca (cached_argv_size);
      for (i = 0; i < argc; i++)
        cached_argv[i] = macro_bcache_str (t, argv[i]);


      d->argv = macro_bcache (t, cached_argv, cached_argv_size);
      d->argc = argc;
    }
  return d;
}
