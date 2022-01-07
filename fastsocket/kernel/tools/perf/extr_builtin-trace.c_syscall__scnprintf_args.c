
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct syscall {TYPE_2__* tp_format; } ;
struct format_field {int name; struct format_field* next; } ;
struct TYPE_3__ {struct format_field* fields; } ;
struct TYPE_4__ {TYPE_1__ format; } ;


 scalar_t__ scnprintf (char*,size_t,char*,char*,int,unsigned long) ;

__attribute__((used)) static size_t syscall__scnprintf_args(struct syscall *sc, char *bf, size_t size,
          unsigned long *args)
{
 int i = 0;
 size_t printed = 0;

 if (sc->tp_format != ((void*)0)) {
  struct format_field *field;


  for (field = sc->tp_format->format.fields; field; field = field->next) {
   printed += scnprintf(bf + printed, size - printed,
          "%s%s: %ld", printed ? ", " : "",
          field->name, args[i++]);
  }
 } else {
  while (i < 6) {
   printed += scnprintf(bf + printed, size - printed,
          "%sarg%d: %ld",
          printed ? ", " : "", i, args[i]);
   ++i;
  }
 }

 return printed;
}
