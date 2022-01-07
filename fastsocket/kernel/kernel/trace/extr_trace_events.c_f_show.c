
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct ftrace_event_call* private; } ;
struct ftrace_event_field {char const* type; int is_signed; int size; int offset; int name; } ;
struct TYPE_2__ {int print_fmt; } ;
struct ftrace_event_call {TYPE_1__ fmt; int id; int name; } ;




 int seq_printf (struct seq_file*,char*,...) ;
 int seq_putc (struct seq_file*,char) ;
 char* strchr (char const*,char) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static int f_show(struct seq_file *m, void *v)
{
 struct ftrace_event_call *call = m->private;
 struct ftrace_event_field *field;
 const char *array_descriptor;

 switch ((unsigned long)v) {
 case 129:
  seq_printf(m, "name: %s\n", call->name);
  seq_printf(m, "ID: %d\n", call->id);
  seq_printf(m, "format:\n");
  return 0;

 case 128:
  seq_printf(m, "\nprint fmt: %s\n",
      call->fmt.print_fmt);
  return 0;
 }






 if ((unsigned long)v & 1) {
  seq_putc(m, '\n');
  v = (void *)((unsigned long)v & ~1L);
 }

 field = v;
 array_descriptor = strchr(field->type, '[');

 if (!strncmp(field->type, "__data_loc", 10))
  array_descriptor = ((void*)0);

 if (!array_descriptor)
  seq_printf(m, "\tfield:%s %s;\toffset:%u;\tsize:%u;\tsigned:%d;\n",
      field->type, field->name, field->offset,
      field->size, !!field->is_signed);
 else
  seq_printf(m, "\tfield:%.*s %s%s;\toffset:%u;\tsize:%u;\tsigned:%d;\n",
      (int)(array_descriptor - field->type),
      field->type, field->name,
      array_descriptor, field->offset,
      field->size, !!field->is_signed);

 return 0;
}
