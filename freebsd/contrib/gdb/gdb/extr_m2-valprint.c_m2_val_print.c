
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;
typedef enum val_prettyprint { ____Placeholder_val_prettyprint } val_prettyprint ;
typedef int CORE_ADDR ;



int
m2_val_print (struct type *type, char *valaddr, int embedded_offset,
       CORE_ADDR address, struct ui_file *stream, int format,
       int deref_ref, int recurse, enum val_prettyprint pretty)
{
  extern int c_val_print (struct type *, char *, int, CORE_ADDR,
     struct ui_file *, int, int, int,
     enum val_prettyprint);
  return (c_val_print (type, valaddr, 0, address, stream, format, deref_ref,
         recurse, pretty));
}
