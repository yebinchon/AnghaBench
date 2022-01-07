
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct format_field {int dummy; } ;
struct TYPE_6__ {struct format_field* field; } ;
struct TYPE_5__ {int value; } ;
struct TYPE_4__ {int val; int type; int str; } ;
struct filter_arg {TYPE_3__ field; void* type; TYPE_2__ boolean; TYPE_1__ value; } ;
struct event_format {int dummy; } ;
typedef enum event_type { ____Placeholder_event_type } event_type ;


 int COMM ;



 void* FILTER_ARG_BOOLEAN ;
 void* FILTER_ARG_FIELD ;
 void* FILTER_ARG_VALUE ;
 int FILTER_CHAR ;
 int FILTER_FALSE ;
 int FILTER_NUMBER ;
 int FILTER_STRING ;
 struct filter_arg* allocate_arg () ;
 struct format_field comm ;
 int die (char*) ;
 int free_arg (struct filter_arg*) ;
 int isdigit (char const) ;
 struct format_field* pevent_find_any_field (struct event_format*,char const*) ;
 int show_error (char**,char*,char const*) ;
 int strcmp (char const*,int ) ;
 int strdup (char const*) ;
 int strtoull (char const*,int *,int ) ;

__attribute__((used)) static struct filter_arg *
create_arg_item(struct event_format *event, const char *token,
  enum event_type type, char **error_str)
{
 struct format_field *field;
 struct filter_arg *arg;

 arg = allocate_arg();

 switch (type) {

 case 128:
 case 130:
  arg->type = FILTER_ARG_VALUE;
  arg->value.type =
   type == 130 ? FILTER_STRING : FILTER_CHAR;
  arg->value.str = strdup(token);
  if (!arg->value.str)
   die("malloc string");
  break;
 case 129:

  if (isdigit(token[0])) {
   arg->type = FILTER_ARG_VALUE;
   arg->value.type = FILTER_NUMBER;
   arg->value.val = strtoull(token, ((void*)0), 0);
   break;
  }

  field = pevent_find_any_field(event, token);
  if (!field) {
   if (strcmp(token, COMM) != 0) {

    arg->type = FILTER_ARG_BOOLEAN;
    arg->boolean.value = FILTER_FALSE;
    break;
   }

   field = &comm;
  }
  arg->type = FILTER_ARG_FIELD;
  arg->field.field = field;
  break;
 default:
  free_arg(arg);
  show_error(error_str, "expected a value but found %s",
      token);
  return ((void*)0);
 }
 return arg;
}
