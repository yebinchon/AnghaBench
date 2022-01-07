
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct value {int dummy; } ;
struct symtabs_and_lines {int nelts; TYPE_3__* sals; } ;
struct symtab {int dummy; } ;
struct breakpoint {int type; char* addr_string; int enable_state; char* cond_string; TYPE_3__* cond; int * val; TYPE_3__* exp; int * exp_valid_block; int exp_string; TYPE_2__* loc; int line_number; TYPE_3__* source_file; int input_radix; int language; int pending; int number; } ;
struct block {int dummy; } ;
typedef enum enable_state { ____Placeholder_enable_state } enable_state ;
struct TYPE_11__ {int section; int pc; int line; TYPE_1__* symtab; } ;
struct TYPE_10__ {int section; int requested_address; int address; } ;
struct TYPE_9__ {int filename; } ;


 int VALUE_LAZY (int *) ;
 int adjust_breakpoint_address (int ) ;
 struct block* block_for_pc (int ) ;
 int bp_disabled ;
 int bp_shlib_disabled ;






 int breakpoint_enabled (struct breakpoint*) ;
 int breakpoints_changed () ;
 int check_duplicates (struct breakpoint*) ;
 struct symtabs_and_lines decode_line_1 (char**,int,struct symtab*,int ,char***,int *) ;
 int delete_breakpoint (struct breakpoint*) ;
 int * evaluate_expression (TYPE_3__*) ;
 int * innermost_block ;
 int input_radix ;
 int mention (struct breakpoint*) ;
 void* parse_exp_1 (char**,struct block*,int ) ;
 TYPE_3__* parse_expression (int ) ;
 int printf_filtered (char*,int) ;
 int release_value (int *) ;
 int resolve_sal_pc (TYPE_3__*) ;
 TYPE_3__* savestring (int ,int ) ;
 int set_language (int ) ;
 int strcmp (TYPE_3__*,int ) ;
 int strlen (int ) ;
 int value_fetch_lazy (int *) ;
 int value_free (int *) ;
 int value_free_to_mark (struct value*) ;
 struct value* value_mark () ;
 int warning (char*,int ) ;
 int xfree (TYPE_3__*) ;

__attribute__((used)) static int
breakpoint_re_set_one (void *bint)
{

  struct breakpoint *b = (struct breakpoint *) bint;
  struct value *mark;
  int i;
  struct symtabs_and_lines sals;
  char *s;
  enum enable_state save_enable;

  switch (b->type)
    {
    case 136:
      warning ("attempted to reset apparently deleted breakpoint #%d?",
        b->number);
      return 0;
    case 150:
    case 140:
    case 145:
    case 143:
      if (b->addr_string == ((void*)0))
 {

   delete_breakpoint (b);
   return 0;
 }
      if (b->pending)
 break;

      save_enable = b->enable_state;
      if (b->enable_state != bp_shlib_disabled)
        b->enable_state = bp_disabled;

      set_language (b->language);
      input_radix = b->input_radix;
      s = b->addr_string;
      sals = decode_line_1 (&s, 1, (struct symtab *) ((void*)0), 0, (char ***) ((void*)0), ((void*)0));
      for (i = 0; i < sals.nelts; i++)
 {
   resolve_sal_pc (&sals.sals[i]);



   if (b->cond_string != ((void*)0))
     {
       s = b->cond_string;
       if (b->cond)
  {
    xfree (b->cond);


    b->cond = ((void*)0);
  }
       b->cond = parse_exp_1 (&s, block_for_pc (sals.sals[i].pc), 0);
     }


   if (b->loc->address != sals.sals[i].pc


       || (b->source_file != ((void*)0)
    && sals.sals[i].symtab != ((void*)0)
    && (strcmp (b->source_file, sals.sals[i].symtab->filename) != 0
        || b->line_number != sals.sals[i].line)
       )


       || ((b->source_file == ((void*)0)) != (sals.sals[i].symtab == ((void*)0)))
     )
     {
       if (b->source_file != ((void*)0))
  xfree (b->source_file);
       if (sals.sals[i].symtab == ((void*)0))
  b->source_file = ((void*)0);
       else
  b->source_file =
    savestring (sals.sals[i].symtab->filename,
         strlen (sals.sals[i].symtab->filename));
       b->line_number = sals.sals[i].line;
       b->loc->requested_address = sals.sals[i].pc;
       b->loc->address
         = adjust_breakpoint_address (b->loc->requested_address);





       mention (b);



       breakpoints_changed ();
     }
   b->loc->section = sals.sals[i].section;
   b->enable_state = save_enable;




   check_duplicates (b);

 }
      xfree (sals.sals);
      break;

    case 129:
    case 139:
    case 134:
    case 151:
      innermost_block = ((void*)0);
      if (b->exp)
 {
   xfree (b->exp);


   b->exp = ((void*)0);
 }
      b->exp = parse_expression (b->exp_string);
      b->exp_valid_block = innermost_block;
      mark = value_mark ();
      if (b->val)
 {
   value_free (b->val);


   b->val = ((void*)0);
 }
      b->val = evaluate_expression (b->exp);
      release_value (b->val);
      if (VALUE_LAZY (b->val) && breakpoint_enabled (b))
 value_fetch_lazy (b->val);

      if (b->cond_string != ((void*)0))
 {
   s = b->cond_string;
   if (b->cond)
     {
       xfree (b->cond);


       b->cond = ((void*)0);
     }
   b->cond = parse_exp_1 (&s, (struct block *) 0, 0);
 }
      if (breakpoint_enabled (b))
 mention (b);
      value_free_to_mark (mark);
      break;
    case 148:
    case 144:
      break;



    case 146:
    case 142:
    case 147:
      break;

    default:
      printf_filtered ("Deleting unknown breakpoint type %d\n", b->type);



    case 138:
    case 137:
    case 135:
      delete_breakpoint (b);
      break;



    case 133:



    case 131:





    case 130:
    case 141:
    case 128:
    case 149:
    case 132:
      break;
    }

  return 0;
}
