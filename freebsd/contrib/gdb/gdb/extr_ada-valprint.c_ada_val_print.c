
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;
struct ada_val_print_args {char* valaddr0; int embedded_offset; int format; int deref_ref; int recurse; int pretty; struct ui_file* stream; int address; struct type* type; } ;
typedef enum val_prettyprint { ____Placeholder_val_prettyprint } val_prettyprint ;
typedef int CORE_ADDR ;


 int RETURN_MASK_ALL ;
 int ada_val_print_stub ;
 int catch_errors (int ,struct ada_val_print_args*,int *,int ) ;

int
ada_val_print (struct type *type, char *valaddr0, int embedded_offset,
        CORE_ADDR address, struct ui_file *stream, int format,
        int deref_ref, int recurse, enum val_prettyprint pretty)
{
  struct ada_val_print_args args;
  args.type = type;
  args.valaddr0 = valaddr0;
  args.embedded_offset = embedded_offset;
  args.address = address;
  args.stream = stream;
  args.format = format;
  args.deref_ref = deref_ref;
  args.recurse = recurse;
  args.pretty = pretty;

  return catch_errors (ada_val_print_stub, &args, ((void*)0), RETURN_MASK_ALL);
}
