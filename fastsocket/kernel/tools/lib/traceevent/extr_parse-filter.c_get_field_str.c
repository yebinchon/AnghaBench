
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pevent_record {char* data; } ;
struct pevent {int dummy; } ;
struct TYPE_3__ {char* buffer; TYPE_2__* field; } ;
struct filter_arg {TYPE_1__ str; } ;
struct event_format {struct pevent* pevent; } ;
struct TYPE_4__ {int flags; int offset; int size; struct event_format* event; } ;


 int FIELD_IS_LONG ;
 int FIELD_IS_POINTER ;
 int FIELD_IS_STRING ;
 unsigned long long get_value (struct event_format*,TYPE_2__*,struct pevent_record*) ;
 int memcpy (char*,char const*,int) ;
 char* pevent_find_function (struct pevent*,unsigned long long) ;
 int snprintf (char*,int,char*,unsigned long long) ;

__attribute__((used)) static const char *get_field_str(struct filter_arg *arg, struct pevent_record *record)
{
 struct event_format *event;
 struct pevent *pevent;
 unsigned long long addr;
 const char *val = ((void*)0);
 char hex[64];


 if (arg->str.field->flags & FIELD_IS_STRING) {
  val = record->data + arg->str.field->offset;





  if (*(val + arg->str.field->size - 1)) {

   memcpy(arg->str.buffer, val, arg->str.field->size);

   val = arg->str.buffer;
  }

 } else {
  event = arg->str.field->event;
  pevent = event->pevent;
  addr = get_value(event, arg->str.field, record);

  if (arg->str.field->flags & (FIELD_IS_POINTER | FIELD_IS_LONG))

   val = pevent_find_function(pevent, addr);

  if (val == ((void*)0)) {

   snprintf(hex, 64, "0x%llx", addr);
   val = hex;
  }
 }

 return val;
}
