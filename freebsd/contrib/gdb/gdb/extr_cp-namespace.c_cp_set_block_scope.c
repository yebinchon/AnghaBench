
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct obstack {int dummy; } ;
struct block {int dummy; } ;


 char* SYMBOL_CPLUS_DEMANGLED_NAME (struct symbol const*) ;
 int block_set_scope (struct block*,int ,struct obstack*) ;
 unsigned int cp_entire_prefix_len (char const*) ;
 int obsavestring (char const*,unsigned int,struct obstack*) ;
 char const* processing_current_prefix ;
 scalar_t__ processing_has_namespace_info ;
 unsigned int strlen (char const*) ;

void
cp_set_block_scope (const struct symbol *symbol,
      struct block *block,
      struct obstack *obstack)
{



  if (SYMBOL_CPLUS_DEMANGLED_NAME (symbol) != ((void*)0))
    {
      if (processing_has_namespace_info)
 {
   block_set_scope
     (block, obsavestring (processing_current_prefix,
      strlen (processing_current_prefix),
      obstack),
      obstack);
 }
      else
 {
   const char *name = SYMBOL_CPLUS_DEMANGLED_NAME (symbol);
   unsigned int prefix_len = cp_entire_prefix_len (name);

   block_set_scope (block,
      obsavestring (name, prefix_len, obstack),
      obstack);
 }
    }
}
