
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;
typedef enum val_prettyprint { ____Placeholder_val_prettyprint } val_prettyprint ;
typedef int CORE_ADDR ;


 int error (char*) ;

__attribute__((used)) static int
unk_lang_val_print (struct type *type, char *valaddr, int embedded_offset,
      CORE_ADDR address, struct ui_file *stream, int format,
      int deref_ref, int recurse, enum val_prettyprint pretty)
{
  error ("internal error - unimplemented function unk_lang_val_print called.");
}
