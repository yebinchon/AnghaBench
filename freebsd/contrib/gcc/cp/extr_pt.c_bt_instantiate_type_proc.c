
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* binding_entry ;
struct TYPE_3__ {int type; } ;


 int CLASSTYPE_TI_ARGS (int ) ;
 scalar_t__ IS_AGGR_TYPE (int ) ;
 int TYPE_MAIN_DECL (int ) ;
 int do_type_instantiation (int ,int ,int ) ;
 int uses_template_parms (int ) ;

__attribute__((used)) static void
bt_instantiate_type_proc (binding_entry entry, void *data)
{
  tree storage = *(tree *) data;

  if (IS_AGGR_TYPE (entry->type)
      && !uses_template_parms (CLASSTYPE_TI_ARGS (entry->type)))
    do_type_instantiation (TYPE_MAIN_DECL (entry->type), storage, 0);
}
