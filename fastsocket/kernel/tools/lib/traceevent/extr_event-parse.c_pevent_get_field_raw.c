
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct pevent_record {void* data; } ;
struct format_field {unsigned int offset; int flags; int size; } ;
struct event_format {int pevent; } ;


 int FIELD_IS_DYNAMIC ;
 struct format_field* pevent_find_field (struct event_format*,char const*) ;
 unsigned int pevent_read_number (int ,void*,int) ;
 int trace_seq_printf (struct trace_seq*,char*,char const*) ;

void *pevent_get_field_raw(struct trace_seq *s, struct event_format *event,
      const char *name, struct pevent_record *record,
      int *len, int err)
{
 struct format_field *field;
 void *data = record->data;
 unsigned offset;
 int dummy;

 if (!event)
  return ((void*)0);

 field = pevent_find_field(event, name);

 if (!field) {
  if (err)
   trace_seq_printf(s, "<CANT FIND FIELD %s>", name);
  return ((void*)0);
 }


 if (!len)
  len = &dummy;

 offset = field->offset;
 if (field->flags & FIELD_IS_DYNAMIC) {
  offset = pevent_read_number(event->pevent,
         data + offset, field->size);
  *len = offset >> 16;
  offset &= 0xffff;
 } else
  *len = field->size;

 return data + offset;
}
