
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int type_p ;
struct nested_ptr_data {int type; } ;
typedef TYPE_1__* options_p ;
typedef enum gc_used_enum { ____Placeholder_gc_used_enum } gc_used_enum ;
struct TYPE_3__ {scalar_t__ info; int name; struct TYPE_3__* next; } ;


 int GC_POINTED_TO ;
 int set_gc_used_type (int ,int,int *) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void
process_gc_options (options_p opt, enum gc_used_enum level, int *maybe_undef,
      int *pass_param, int *length, type_p *nested_ptr)
{
  options_p o;
  for (o = opt; o; o = o->next)
    if (strcmp (o->name, "ptr_alias") == 0 && level == GC_POINTED_TO)
      set_gc_used_type ((type_p) o->info, GC_POINTED_TO, ((void*)0));
    else if (strcmp (o->name, "maybe_undef") == 0)
      *maybe_undef = 1;
    else if (strcmp (o->name, "use_params") == 0)
      *pass_param = 1;
    else if (strcmp (o->name, "length") == 0)
      *length = 1;
    else if (strcmp (o->name, "nested_ptr") == 0)
      *nested_ptr = ((const struct nested_ptr_data *) o->info)->type;
}
