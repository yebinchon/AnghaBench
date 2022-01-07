
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_table {int dummy; } ;
struct macro_source_file {scalar_t__ includes; int filename; struct macro_table* table; } ;


 struct macro_source_file* macro_alloc (int,struct macro_table*) ;
 int macro_bcache_str (struct macro_table*,char const*) ;
 int memset (struct macro_source_file*,int ,int) ;

__attribute__((used)) static struct macro_source_file *
new_source_file (struct macro_table *t,
                 const char *filename)
{

  struct macro_source_file *f = macro_alloc (sizeof (*f), t);

  memset (f, 0, sizeof (*f));
  f->table = t;
  f->filename = macro_bcache_str (t, filename);
  f->includes = 0;

  return f;
}
