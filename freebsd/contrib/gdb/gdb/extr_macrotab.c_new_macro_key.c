
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_table {int dummy; } ;
struct macro_source_file {int dummy; } ;
struct macro_key {int start_line; scalar_t__ end_file; struct macro_source_file* start_file; int name; struct macro_table* table; } ;


 struct macro_key* macro_alloc (int,struct macro_table*) ;
 int macro_bcache_str (struct macro_table*,char const*) ;
 int memset (struct macro_key*,int ,int) ;

__attribute__((used)) static struct macro_key *
new_macro_key (struct macro_table *t,
               const char *name,
               struct macro_source_file *file,
               int line)
{
  struct macro_key *k = macro_alloc (sizeof (*k), t);

  memset (k, 0, sizeof (*k));
  k->table = t;
  k->name = macro_bcache_str (t, name);
  k->start_file = file;
  k->start_line = line;
  k->end_file = 0;

  return k;
}
