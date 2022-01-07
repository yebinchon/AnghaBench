
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int valueT ;
typedef int symbolS ;
typedef int subsegT ;
typedef int segT ;
typedef int fragS ;
struct TYPE_6__ {scalar_t__ X_add_number; int * X_add_symbol; int X_op; } ;
typedef TYPE_1__ expressionS ;
struct TYPE_8__ {char* next_free; } ;
struct TYPE_7__ {int hadone; } ;


 int INIT_STAB_SECTION (int ) ;



 int OBJ_PROCESS_STAB (int ,int,char*,int,int,int) ;
 int O_symbol ;
 int SEC_DEBUGGING ;
 int SEC_READONLY ;
 int SEC_RELOC ;
 scalar_t__ SEPARATE_STAB_SECTIONS ;
 int SKIP_WHITESPACE () ;
 int _ (char*) ;
 int abort () ;
 int as_warn (int ,int,...) ;
 int bfd_set_section_flags (int ,int ,int) ;
 int cons (int) ;
 char* demand_copy_C_string (int*) ;
 int demand_empty_rest_of_line () ;
 int emit_expr (TYPE_1__*,int) ;
 char* frag_more (int) ;
 int * frag_now ;
 int frag_now_fix () ;
 int free (char*) ;
 int get_absolute_expression () ;
 char get_absolute_expression_and_terminator (long*) ;
 unsigned int get_stab_string_offset (char*,char*) ;
 int ignore_rest_of_line () ;
 char* input_line_pointer ;
 scalar_t__ listing ;
 int listing_source_file (char*) ;
 int listing_source_line (unsigned int) ;
 int md_flush_pending_output () ;
 int md_number_to_chars (char*,int ,int) ;
 TYPE_3__ notes ;
 int now_seg ;
 int now_subseg ;
 int obstack_free (TYPE_3__*,char*) ;
 TYPE_2__* seg_info (int ) ;
 int stdoutput ;
 int strcmp (char*,char*) ;
 int subseg_new (char*,int ) ;
 int subseg_set (int ,int ) ;
 int * symbol_temp_new (int ,int ,int *) ;
 char* xstrdup (char*) ;

__attribute__((used)) static void
s_stab_generic (int what, char *stab_secname, char *stabstr_secname)
{
  long longint;
  char *string, *saved_string_obstack_end;
  int type;
  int other;
  int desc;
  if (what != 's')
    {
      string = "";
      saved_string_obstack_end = 0;
    }
  else
    {
      int length;

      string = demand_copy_C_string (&length);



      saved_string_obstack_end = notes.next_free;
      SKIP_WHITESPACE ();
      if (*input_line_pointer == ',')
 input_line_pointer++;
      else
 {
   as_warn (_(".stab%c: missing comma"), what);
   ignore_rest_of_line ();
   return;
 }
    }

  if (get_absolute_expression_and_terminator (&longint) != ',')
    {
      as_warn (_(".stab%c: missing comma"), what);
      ignore_rest_of_line ();
      return;
    }
  type = longint;

  if (get_absolute_expression_and_terminator (&longint) != ',')
    {
      as_warn (_(".stab%c: missing comma"), what);
      ignore_rest_of_line ();
      return;
    }
  other = longint;

  desc = get_absolute_expression ();

  if ((desc > 0xffff) || (desc < -0x8000))



    as_warn (_(".stab%c: description field '%x' too big, try a different debug format"),
      what, desc);

  if (what == 's' || what == 'n')
    {
      if (*input_line_pointer != ',')
 {
   as_warn (_(".stab%c: missing comma"), what);
   ignore_rest_of_line ();
   return;
 }
      input_line_pointer++;
      SKIP_WHITESPACE ();
    }
  if (listing)
    {
      switch (type)
 {
 case 130:
   listing_source_line ((unsigned int) desc);
   break;
 case 129:
 case 128:
   listing_source_file (string);
   break;
 }
    }






  if (SEPARATE_STAB_SECTIONS)


    {
      segT saved_seg = now_seg;
      subsegT saved_subseg = now_subseg;
      fragS *saved_frag = frag_now;
      valueT dot;
      segT seg;
      unsigned int stroff;
      char *p;

      static segT cached_sec;
      static char *cached_secname;

      dot = frag_now_fix ();





      if (cached_secname && !strcmp (cached_secname, stab_secname))
 {
   seg = cached_sec;
   subseg_set (seg, 0);
 }
      else
 {
   seg = subseg_new (stab_secname, 0);
   if (cached_secname)
     free (cached_secname);
   cached_secname = xstrdup (stab_secname);
   cached_sec = seg;
 }

      if (! seg_info (seg)->hadone)
 {
   bfd_set_section_flags (stdoutput, seg,
     SEC_READONLY | SEC_RELOC | SEC_DEBUGGING);



   seg_info (seg)->hadone = 1;
 }

      stroff = get_stab_string_offset (string, stabstr_secname);
      if (what == 's')
 {

   if (saved_string_obstack_end == notes.next_free)
     obstack_free (&notes, string);
 }



      p = frag_more (8);
      md_number_to_chars (p, (valueT) stroff, 4);
      md_number_to_chars (p + 4, (valueT) type, 1);
      md_number_to_chars (p + 5, (valueT) other, 1);
      md_number_to_chars (p + 6, (valueT) desc, 2);

      if (what == 's' || what == 'n')
 {

   cons (4);
   input_line_pointer--;
 }
      else
 {
   symbolS *symbol;
   expressionS exp;


   symbol = symbol_temp_new (saved_seg, dot, saved_frag);

   exp.X_op = O_symbol;
   exp.X_add_symbol = symbol;
   exp.X_add_number = 0;

   emit_expr (&exp, 4);
 }





      subseg_set (saved_seg, saved_subseg);
    }
  else
    {



      abort ();

    }

  demand_empty_rest_of_line ();
}
