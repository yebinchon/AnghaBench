
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct symbol {int dummy; } ;
struct objfile {int dummy; } ;
struct dieinfo {int dummy; } ;
typedef struct type* SYMBOL_TYPE ;


 int TYPE_STUB (struct type*) ;
 scalar_t__ cu_language ;
 scalar_t__ language_cplus ;
 struct symbol* new_symbol (struct dieinfo*,struct objfile*) ;
 struct type* struct_type (struct dieinfo*,char*,char*,struct objfile*) ;
 int synthesize_typedef (struct dieinfo*,struct objfile*,struct type*) ;

__attribute__((used)) static void
read_structure_scope (struct dieinfo *dip, char *thisdie, char *enddie,
        struct objfile *objfile)
{
  struct type *type;
  struct symbol *sym;

  type = struct_type (dip, thisdie, enddie, objfile);
  if (!TYPE_STUB (type))
    {
      sym = new_symbol (dip, objfile);
      if (sym != ((void*)0))
 {
   SYMBOL_TYPE (sym) = type;
   if (cu_language == language_cplus)
     {
       synthesize_typedef (dip, objfile, type);
     }
 }
    }
}
