
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct line_map {int to_file; } ;
struct TYPE_10__ {int line; int file; } ;
typedef TYPE_1__ source_location ;
typedef TYPE_1__ location_t ;
struct TYPE_11__ {scalar_t__ type; } ;
typedef TYPE_3__ cpp_token ;
typedef int cpp_reader ;


 scalar_t__ CPP_EOF ;
 scalar_t__ CPP_NAME ;
 int OPT_Wunknown_pragmas ;
 int SOURCE_LINE (struct line_map const*,TYPE_1__) ;
 TYPE_3__* cpp_get_token (int *) ;
 unsigned char* cpp_token_as_text (int *,TYPE_3__ const*) ;
 scalar_t__ in_system_header ;
 int line_table ;
 struct line_map* linemap_lookup (int *,TYPE_1__) ;
 scalar_t__ warn_unknown_pragmas ;
 int warning (int ,char*,TYPE_1__*,unsigned char const*,unsigned char const*) ;

__attribute__((used)) static void
cb_def_pragma (cpp_reader *pfile, source_location loc)
{



  if (warn_unknown_pragmas > in_system_header)
    {
      const unsigned char *space, *name;
      const cpp_token *s;

      location_t fe_loc;
      const struct line_map *map = linemap_lookup (&line_table, loc);
      fe_loc.file = map->to_file;
      fe_loc.line = SOURCE_LINE (map, loc);




      space = name = (const unsigned char *) "";
      s = cpp_get_token (pfile);
      if (s->type != CPP_EOF)
 {
   space = cpp_token_as_text (pfile, s);
   s = cpp_get_token (pfile);
   if (s->type == CPP_NAME)
     name = cpp_token_as_text (pfile, s);
 }

      warning (OPT_Wunknown_pragmas, "%Hignoring #pragma %s %s",
        &fe_loc, space, name);
    }
}
