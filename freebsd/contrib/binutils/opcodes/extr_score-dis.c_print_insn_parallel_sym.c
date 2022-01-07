
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disassemble_info {int (* fprintf_func ) (void*,char*,char*) ;void* stream; } ;
typedef int (* fprintf_ftype ) (void*,char*,char*) ;



__attribute__((used)) static void
print_insn_parallel_sym (struct disassemble_info *info)
{
  void *stream = info->stream;
  fprintf_ftype func = info->fprintf_func;




  func (stream, "%s", " ||\n      \t          \t");
}
