
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int dummy; } ;
typedef enum minimal_symbol_type { ____Placeholder_minimal_symbol_type } minimal_symbol_type ;
typedef int CORE_ADDR ;


 int prim_record_minimal_symbol (char*,int ,int,struct objfile*) ;

__attribute__((used)) static void
record_minimal_symbol (char *name, CORE_ADDR address,
         enum minimal_symbol_type type, struct objfile *objfile)
{

  if (name[0] == '@')
    return;

  prim_record_minimal_symbol (name, address, type, objfile);
}
