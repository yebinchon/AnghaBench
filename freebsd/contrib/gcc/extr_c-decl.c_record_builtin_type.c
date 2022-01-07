
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
typedef enum rid { ____Placeholder_rid } rid ;
struct TYPE_2__ {int (* type_decl ) (int ,int) ;} ;


 int TYPE_DECL ;
 int build_decl (int ,int ,int ) ;
 TYPE_1__* debug_hooks ;
 int get_identifier (char const*) ;
 int pushdecl (int ) ;
 int * ridpointers ;
 int stub1 (int ,int) ;

void
record_builtin_type (enum rid rid_index, const char *name, tree type)
{
  tree id, decl;
  if (name == 0)
    id = ridpointers[(int) rid_index];
  else
    id = get_identifier (name);
  decl = build_decl (TYPE_DECL, id, type);
  pushdecl (decl);
  if (debug_hooks->type_decl)
    debug_hooks->type_decl (decl, 0);
}
