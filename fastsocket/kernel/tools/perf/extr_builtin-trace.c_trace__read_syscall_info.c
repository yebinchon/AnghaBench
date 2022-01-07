
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tp_name ;
struct TYPE_3__ {int max; struct syscall* table; } ;
struct trace {TYPE_1__ syscalls; int audit_machine; } ;
struct syscall {char const* name; int * tp_format; TYPE_2__* fmt; } ;
struct TYPE_4__ {char const* alias; } ;


 char* audit_syscall_to_name (int,int ) ;
 void* event_format__new (char*,char*) ;
 int memset (struct syscall*,int ,int) ;
 struct syscall* realloc (struct syscall*,int) ;
 int snprintf (char*,int,char*,char const*) ;
 TYPE_2__* syscall_fmt__find (char const*) ;

__attribute__((used)) static int trace__read_syscall_info(struct trace *trace, int id)
{
 char tp_name[128];
 struct syscall *sc;
 const char *name = audit_syscall_to_name(id, trace->audit_machine);

 if (name == ((void*)0))
  return -1;

 if (id > trace->syscalls.max) {
  struct syscall *nsyscalls = realloc(trace->syscalls.table, (id + 1) * sizeof(*sc));

  if (nsyscalls == ((void*)0))
   return -1;

  if (trace->syscalls.max != -1) {
   memset(nsyscalls + trace->syscalls.max + 1, 0,
          (id - trace->syscalls.max) * sizeof(*sc));
  } else {
   memset(nsyscalls, 0, (id + 1) * sizeof(*sc));
  }

  trace->syscalls.table = nsyscalls;
  trace->syscalls.max = id;
 }

 sc = trace->syscalls.table + id;
 sc->name = name;
 sc->fmt = syscall_fmt__find(sc->name);

 snprintf(tp_name, sizeof(tp_name), "sys_enter_%s", sc->name);
 sc->tp_format = event_format__new("syscalls", tp_name);

 if (sc->tp_format == ((void*)0) && sc->fmt && sc->fmt->alias) {
  snprintf(tp_name, sizeof(tp_name), "sys_enter_%s", sc->fmt->alias);
  sc->tp_format = event_format__new("syscalls", tp_name);
 }

 return sc->tp_format != ((void*)0) ? 0 : -1;
}
