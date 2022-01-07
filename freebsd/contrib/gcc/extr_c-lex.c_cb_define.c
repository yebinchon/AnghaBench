
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct line_map {int dummy; } ;
typedef int source_location ;
typedef int cpp_reader ;
typedef int cpp_hashnode ;
struct TYPE_2__ {int (* define ) (int ,char const*) ;} ;


 int SOURCE_LINE (struct line_map const*,int ) ;
 scalar_t__ cpp_macro_definition (int *,int *) ;
 TYPE_1__* debug_hooks ;
 int line_table ;
 struct line_map* linemap_lookup (int *,int ) ;
 int stub1 (int ,char const*) ;

__attribute__((used)) static void
cb_define (cpp_reader *pfile, source_location loc, cpp_hashnode *node)
{
  const struct line_map *map = linemap_lookup (&line_table, loc);
  (*debug_hooks->define) (SOURCE_LINE (map, loc),
     (const char *) cpp_macro_definition (pfile, node));
}
