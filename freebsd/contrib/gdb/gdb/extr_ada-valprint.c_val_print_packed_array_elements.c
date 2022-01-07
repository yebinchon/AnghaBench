
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct ui_file {int dummy; } ;
struct type {int dummy; } ;
typedef enum val_prettyprint { ____Placeholder_val_prettyprint } val_prettyprint ;
typedef int LONGEST ;


 int HOST_CHAR_BIT ;
 unsigned long TYPE_FIELD_BITSIZE (struct type*,int ) ;
 int TYPE_FIELD_TYPE (struct type*,int ) ;
 unsigned int TYPE_LENGTH (int ) ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 int VALUE_CONTENTS (struct value*) ;
 struct value* ada_value_primitive_packed_val (int *,char*,unsigned int,unsigned int,unsigned long,struct type*) ;
 int annotate_array_section_begin (unsigned int,struct type*) ;
 int annotate_array_section_end () ;
 int annotate_elt () ;
 int annotate_elt_rep (unsigned int) ;
 int annotate_elt_rep_end () ;
 int check_typedef (struct type*) ;
 int fprintf_filtered (struct ui_file*,char*,...) ;
 scalar_t__ get_discrete_bounds (int ,int*,int*) ;
 scalar_t__ memcmp (int ,int ,unsigned int) ;
 int n_spaces (int) ;
 scalar_t__ prettyprint_arrays ;
 unsigned int print_max ;
 int print_spaces_filtered (int,struct ui_file*) ;
 unsigned int repeat_count_threshold ;
 int val_print (struct type*,int ,int ,int ,struct ui_file*,int,int ,int,int) ;
 int value_free_to_mark (struct value*) ;
 struct value* value_mark () ;
 int wrap_here (int ) ;

__attribute__((used)) static void
val_print_packed_array_elements (struct type *type, char *valaddr,
     int bitoffset, struct ui_file *stream,
     int format, int recurse,
     enum val_prettyprint pretty)
{
  unsigned int i;
  unsigned int things_printed = 0;
  unsigned len;
  struct type *elttype;
  unsigned eltlen;


  unsigned int rep1;

  unsigned int reps;
  unsigned long bitsize = TYPE_FIELD_BITSIZE (type, 0);
  struct value *mark = value_mark ();

  elttype = TYPE_TARGET_TYPE (type);
  eltlen = TYPE_LENGTH (check_typedef (elttype));

  {
    LONGEST low, high;
    if (get_discrete_bounds (TYPE_FIELD_TYPE (type, 0), &low, &high) < 0)
      len = 1;
    else
      len = high - low + 1;
  }

  i = 0;
  annotate_array_section_begin (i, elttype);

  while (i < len && things_printed < print_max)
    {
      struct value *v0, *v1;
      int i0;

      if (i != 0)
 {
   if (prettyprint_arrays)
     {
       fprintf_filtered (stream, ",\n");
       print_spaces_filtered (2 + 2 * recurse, stream);
     }
   else
     {
       fprintf_filtered (stream, ", ");
     }
 }
      wrap_here (n_spaces (2 + 2 * recurse));

      i0 = i;
      v0 = ada_value_primitive_packed_val (((void*)0), valaddr,
        (i0 * bitsize) / HOST_CHAR_BIT,
        (i0 * bitsize) % HOST_CHAR_BIT,
        bitsize, elttype);
      while (1)
 {
   i += 1;
   if (i >= len)
     break;
   v1 = ada_value_primitive_packed_val (((void*)0), valaddr,
            (i * bitsize) / HOST_CHAR_BIT,
            (i * bitsize) % HOST_CHAR_BIT,
            bitsize, elttype);
   if (memcmp (VALUE_CONTENTS (v0), VALUE_CONTENTS (v1), eltlen) != 0)
     break;
 }

      if (i - i0 > repeat_count_threshold)
 {
   val_print (elttype, VALUE_CONTENTS (v0), 0, 0, stream, format,
       0, recurse + 1, pretty);
   annotate_elt_rep (i - i0);
   fprintf_filtered (stream, " <repeats %u times>", i - i0);
   annotate_elt_rep_end ();

 }
      else
 {
   int j;
   for (j = i0; j < i; j += 1)
     {
       if (j > i0)
  {
    if (prettyprint_arrays)
      {
        fprintf_filtered (stream, ",\n");
        print_spaces_filtered (2 + 2 * recurse, stream);
      }
    else
      {
        fprintf_filtered (stream, ", ");
      }
    wrap_here (n_spaces (2 + 2 * recurse));
  }
       val_print (elttype, VALUE_CONTENTS (v0), 0, 0, stream, format,
    0, recurse + 1, pretty);
       annotate_elt ();
     }
 }
      things_printed += i - i0;
    }
  annotate_array_section_end ();
  if (i < len)
    {
      fprintf_filtered (stream, "...");
    }

  value_free_to_mark (mark);
}
