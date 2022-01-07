
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_14__ {struct print_arg* size; struct print_arg* field; } ;
struct TYPE_13__ {struct print_arg* right; struct print_arg* left; int op; } ;
struct TYPE_12__ {struct print_arg* item; } ;
struct TYPE_11__ {int symbols; struct print_arg* field; } ;
struct TYPE_10__ {int flags; int * delim; struct print_arg* field; } ;
struct TYPE_9__ {int name; } ;
struct TYPE_8__ {int atom; } ;
struct print_arg {int type; struct print_arg* next; TYPE_7__ hex; TYPE_6__ op; TYPE_5__ typecast; TYPE_4__ symbol; TYPE_3__ flags; TYPE_2__ field; TYPE_1__ atom; } ;
struct event_format {int dummy; } ;
 int cur_field_name ;
 int define_field (int const,char const*,int ,int *) ;
 int define_value (int,char const*,int ,char*,int ) ;
 int define_values (int const,int ,char const*,int ) ;
 int free (int ) ;
 int strcmp (int ,char*) ;
 int strdup (int ) ;
 int zero_flag_atom ;

__attribute__((used)) static void define_event_symbols(struct event_format *event,
     const char *ev_name,
     struct print_arg *args)
{
 switch (args->type) {
 case 132:
  break;
 case 139:
  define_value(135, ev_name, cur_field_name, "0",
        args->atom.atom);
  zero_flag_atom = 0;
  break;
 case 136:
  if (cur_field_name)
   free(cur_field_name);
  cur_field_name = strdup(args->field.name);
  break;
 case 135:
  define_event_symbols(event, ev_name, args->flags.field);
  define_field(135, ev_name, cur_field_name,
        args->flags.delim);
  define_values(135, args->flags.flags, ev_name,
         cur_field_name);
  break;
 case 129:
  define_event_symbols(event, ev_name, args->symbol.field);
  define_field(129, ev_name, cur_field_name, ((void*)0));
  define_values(129, args->symbol.symbols, ev_name,
         cur_field_name);
  break;
 case 130:
  break;
 case 128:
  define_event_symbols(event, ev_name, args->typecast.item);
  break;
 case 131:
  if (strcmp(args->op.op, ":") == 0)
   zero_flag_atom = 1;
  define_event_symbols(event, ev_name, args->op.left);
  define_event_symbols(event, ev_name, args->op.right);
  break;
 case 133:
  define_event_symbols(event, ev_name, args->hex.field);
  define_event_symbols(event, ev_name, args->hex.size);
  break;
 default:

 case 138:
 case 137:
 case 134:

  return;
 }

 if (args->next)
  define_event_symbols(event, ev_name, args->next);
}
