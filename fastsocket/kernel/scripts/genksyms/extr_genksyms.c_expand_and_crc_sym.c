
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {struct symbol* visited; void* expansion_trail; struct string_list* defn; } ;
struct string_list {int tag; char* string; struct string_list* next; } ;







 struct symbol* add_symbol (char*,int,struct string_list*,int ) ;
 struct string_list** alloca (int) ;
 int debugfile ;
 int error_with_pos (char*,char*,char*) ;
 void* expansion_trail ;
 struct symbol* find_symbol (char*,int) ;
 int flag_dump_defs ;
 int fprintf (int ,char*,char*,...) ;
 unsigned long partial_crc32 (char*,unsigned long) ;
 unsigned long partial_crc32_one (char,unsigned long) ;
 char** symbol_type_name ;
 struct symbol* visited_symbols ;
 struct string_list* xmalloc (int) ;
 void* xstrdup (char*) ;

__attribute__((used)) static unsigned long expand_and_crc_sym(struct symbol *sym, unsigned long crc)
{
 struct string_list *list = sym->defn;
 struct string_list **e, **b;
 struct string_list *tmp, **tmp2;
 int elem = 1;

 if (!list)
  return crc;

 tmp = list;
 while ((tmp = tmp->next) != ((void*)0))
  elem++;

 b = alloca(elem * sizeof(*e));
 e = b + elem;
 tmp2 = e - 1;

 *(tmp2--) = list;
 while ((list = list->next) != ((void*)0))
  *(tmp2--) = list;

 while (b != e) {
  struct string_list *cur;
  struct symbol *subsym;

  cur = *(b++);
  switch (cur->tag) {
  case 131:
   if (flag_dump_defs)
    fprintf(debugfile, "%s ", cur->string);
   crc = partial_crc32(cur->string, crc);
   crc = partial_crc32_one(' ', crc);
   break;

  case 129:
   subsym = find_symbol(cur->string, cur->tag);

   if (subsym->expansion_trail) {
    if (flag_dump_defs)
     fprintf(debugfile, "%s ", cur->string);
    crc = partial_crc32(cur->string, crc);
    crc = partial_crc32_one(' ', crc);
   } else {
    subsym->expansion_trail = expansion_trail;
    expansion_trail = subsym;
    crc = expand_and_crc_sym(subsym, crc);
   }
   break;

  case 130:
  case 128:
  case 132:
   subsym = find_symbol(cur->string, cur->tag);
   if (!subsym) {
    struct string_list *n, *t = ((void*)0);

    error_with_pos("expand undefined %s %s",
            symbol_type_name[cur->tag],
            cur->string);

    n = xmalloc(sizeof(*n));
    n->string = xstrdup(symbol_type_name[cur->tag]);
    n->tag = 131;
    n->next = t;
    t = n;

    n = xmalloc(sizeof(*n));
    n->string = xstrdup(cur->string);
    n->tag = 131;
    n->next = t;
    t = n;

    n = xmalloc(sizeof(*n));
    n->string = xstrdup("{");
    n->tag = 131;
    n->next = t;
    t = n;

    n = xmalloc(sizeof(*n));
    n->string = xstrdup("UNKNOWN");
    n->tag = 131;
    n->next = t;
    t = n;

    n = xmalloc(sizeof(*n));
    n->string = xstrdup("}");
    n->tag = 131;
    n->next = t;
    t = n;

    subsym =
        add_symbol(cur->string, cur->tag, n, 0);
   }
   if (subsym->expansion_trail) {
    if (flag_dump_defs) {
     fprintf(debugfile, "%s %s ",
      symbol_type_name[cur->tag],
      cur->string);
    }

    crc = partial_crc32(symbol_type_name[cur->tag],
          crc);
    crc = partial_crc32_one(' ', crc);
    crc = partial_crc32(cur->string, crc);
    crc = partial_crc32_one(' ', crc);
   } else {
    subsym->expansion_trail = expansion_trail;
    expansion_trail = subsym;
    crc = expand_and_crc_sym(subsym, crc);
   }
   break;
  }
 }

 {
  static struct symbol **end = &visited_symbols;

  if (!sym->visited) {
   *end = sym;
   end = &sym->visited;
   sym->visited = (struct symbol *)-1L;
  }
 }

 return crc;
}
