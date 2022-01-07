
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int va_list ;
typedef int location_t ;
typedef int diagnostic_t ;
struct TYPE_4__ {char const* format_spec; int * args_ptr; int err_no; } ;
struct TYPE_5__ {scalar_t__ option_index; int kind; int location; TYPE_1__ message; } ;
typedef TYPE_2__ diagnostic_info ;


 int errno ;

void
diagnostic_set_info_translated (diagnostic_info *diagnostic, const char *msg,
    va_list *args, location_t location,
    diagnostic_t kind)
{
  diagnostic->message.err_no = errno;
  diagnostic->message.args_ptr = args;
  diagnostic->message.format_spec = msg;
  diagnostic->location = location;
  diagnostic->kind = kind;
  diagnostic->option_index = 0;
}
