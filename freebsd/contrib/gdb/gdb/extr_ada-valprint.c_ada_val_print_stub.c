
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ada_val_print_args {int pretty; int recurse; int deref_ref; int format; int stream; int address; int embedded_offset; int valaddr0; int type; } ;


 int ada_val_print_1 (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
ada_val_print_stub (void * args0)
{
  struct ada_val_print_args *argsp = (struct ada_val_print_args *) args0;
  return ada_val_print_1 (argsp->type, argsp->valaddr0,
     argsp->embedded_offset, argsp->address,
     argsp->stream, argsp->format, argsp->deref_ref,
     argsp->recurse, argsp->pretty);
}
