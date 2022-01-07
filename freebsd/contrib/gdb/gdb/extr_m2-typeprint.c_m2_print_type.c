
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;



void
m2_print_type (struct type *type, char *varstring, struct ui_file *stream,
        int show, int level)
{
  extern void c_print_type (struct type *, char *, struct ui_file *, int,
       int);

  c_print_type (type, varstring, stream, show, level);
}
