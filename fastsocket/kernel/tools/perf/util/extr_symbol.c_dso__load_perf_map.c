
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ (* symbol_filter_t ) (struct map*,struct symbol*) ;
struct symbol {int dummy; } ;
struct map {size_t type; } ;
struct dso {int * symbols; int long_name; } ;
typedef int FILE ;


 int STB_GLOBAL ;
 int fclose (int *) ;
 int feof (int *) ;
 int * fopen (int ,char*) ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 int hex2u64 (char*,int *) ;
 int symbol__delete (struct symbol*) ;
 struct symbol* symbol__new (int ,int ,int ,char*) ;
 int symbols__insert (int *,struct symbol*) ;

__attribute__((used)) static int dso__load_perf_map(struct dso *dso, struct map *map,
         symbol_filter_t filter)
{
 char *line = ((void*)0);
 size_t n;
 FILE *file;
 int nr_syms = 0;

 file = fopen(dso->long_name, "r");
 if (file == ((void*)0))
  goto out_failure;

 while (!feof(file)) {
  u64 start, size;
  struct symbol *sym;
  int line_len, len;

  line_len = getline(&line, &n, file);
  if (line_len < 0)
   break;

  if (!line)
   goto out_failure;

  line[--line_len] = '\0';

  len = hex2u64(line, &start);

  len++;
  if (len + 2 >= line_len)
   continue;

  len += hex2u64(line + len, &size);

  len++;
  if (len + 2 >= line_len)
   continue;

  sym = symbol__new(start, size, STB_GLOBAL, line + len);

  if (sym == ((void*)0))
   goto out_delete_line;

  if (filter && filter(map, sym))
   symbol__delete(sym);
  else {
   symbols__insert(&dso->symbols[map->type], sym);
   nr_syms++;
  }
 }

 free(line);
 fclose(file);

 return nr_syms;

out_delete_line:
 free(line);
out_failure:
 return -1;
}
