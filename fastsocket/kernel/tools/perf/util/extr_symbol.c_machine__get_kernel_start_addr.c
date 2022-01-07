
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct process_args {int start; } ;
struct machine {char* root_dir; } ;
struct TYPE_2__ {scalar_t__ default_guest_kallsyms; } ;


 int PATH_MAX ;
 scalar_t__ kallsyms__parse (char const*,struct process_args*,int ) ;
 scalar_t__ machine__is_default_guest (struct machine*) ;
 scalar_t__ machine__is_host (struct machine*) ;
 int sprintf (char*,char*,char*) ;
 int symbol__in_kernel ;
 scalar_t__ symbol__restricted_filename (char const*,char*) ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static u64 machine__get_kernel_start_addr(struct machine *machine)
{
 const char *filename;
 char path[PATH_MAX];
 struct process_args args;

 if (machine__is_host(machine)) {
  filename = "/proc/kallsyms";
 } else {
  if (machine__is_default_guest(machine))
   filename = (char *)symbol_conf.default_guest_kallsyms;
  else {
   sprintf(path, "%s/proc/kallsyms", machine->root_dir);
   filename = path;
  }
 }

 if (symbol__restricted_filename(filename, "/proc/kallsyms"))
  return 0;

 if (kallsyms__parse(filename, &args, symbol__in_kernel) <= 0)
  return 0;

 return args.start;
}
