
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
struct format_data {int count; int format; int size; } ;
struct expression {int dummy; } ;
struct cleanup {int dummy; } ;


 scalar_t__ TYPE_CODE (int ) ;
 scalar_t__ TYPE_CODE_FUNC ;
 scalar_t__ TYPE_CODE_REF ;
 int VALUE_ADDRESS (struct value*) ;
 scalar_t__ VALUE_BFD_SECTION (struct value*) ;
 scalar_t__ VALUE_LAZY (struct value*) ;
 scalar_t__ VALUE_LVAL (struct value*) ;
 int VALUE_TYPE (struct value*) ;
 struct value* allocate_value (int ) ;
 int builtin_type_void ;
 struct format_data decode_format (char**,int ,int ) ;
 int do_cleanups (struct cleanup*) ;
 int do_examine (struct format_data,int ,scalar_t__) ;
 struct value* evaluate_expression (struct expression*) ;
 int free_current_contents ;
 int last_examine_address ;
 struct value* last_examine_value ;
 int last_format ;
 int last_size ;
 int lookup_internalvar (char*) ;
 struct type* lookup_pointer_type (int ) ;
 scalar_t__ lval_memory ;
 struct cleanup* make_cleanup (int ,struct expression**) ;
 int next_address ;
 scalar_t__ next_section ;
 struct expression* parse_expression (char*) ;
 int set_internalvar (int ,struct value*) ;
 int value_as_address (struct value*) ;
 struct value* value_from_pointer (struct type*,int ) ;
 struct value* value_ind (struct value*) ;

void
x_command (char *exp, int from_tty)
{
  struct expression *expr;
  struct format_data fmt;
  struct cleanup *old_chain;
  struct value *val;

  fmt.format = last_format;
  fmt.size = last_size;
  fmt.count = 1;

  if (exp && *exp == '/')
    {
      exp++;
      fmt = decode_format (&exp, last_format, last_size);
    }



  if (exp != 0 && *exp != 0)
    {
      expr = parse_expression (exp);



      if (from_tty)
 *exp = 0;
      old_chain = make_cleanup (free_current_contents, &expr);
      val = evaluate_expression (expr);
      if (TYPE_CODE (VALUE_TYPE (val)) == TYPE_CODE_REF)
 val = value_ind (val);


      if (
   TYPE_CODE (VALUE_TYPE (val)) == TYPE_CODE_FUNC
    && VALUE_LVAL (val) == lval_memory)
 next_address = VALUE_ADDRESS (val);
      else
 next_address = value_as_address (val);
      if (VALUE_BFD_SECTION (val))
 next_section = VALUE_BFD_SECTION (val);
      do_cleanups (old_chain);
    }

  do_examine (fmt, next_address, next_section);


  last_size = fmt.size;
  last_format = fmt.format;


  if (last_examine_value)
    {


      struct type *pointer_type
 = lookup_pointer_type (VALUE_TYPE (last_examine_value));
      set_internalvar (lookup_internalvar ("_"),
         value_from_pointer (pointer_type,
        last_examine_address));




      if (VALUE_LAZY (last_examine_value))
 set_internalvar (lookup_internalvar ("__"),
    allocate_value (builtin_type_void));
      else
 set_internalvar (lookup_internalvar ("__"), last_examine_value);
    }
}
