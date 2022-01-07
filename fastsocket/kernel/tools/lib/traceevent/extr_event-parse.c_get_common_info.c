
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {struct event_format** events; } ;
struct format_field {int offset; int size; } ;
struct event_format {int dummy; } ;


 int do_warning (char*) ;
 struct format_field* pevent_find_common_field (struct event_format*,char const*) ;

__attribute__((used)) static int get_common_info(struct pevent *pevent,
      const char *type, int *offset, int *size)
{
 struct event_format *event;
 struct format_field *field;





 if (!pevent->events) {
  do_warning("no event_list!");
  return -1;
 }

 event = pevent->events[0];
 field = pevent_find_common_field(event, type);
 if (!field)
  return -1;

 *offset = field->offset;
 *size = field->size;

 return 0;
}
