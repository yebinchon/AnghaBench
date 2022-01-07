
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int symbolS ;
typedef int subsegT ;
typedef scalar_t__ segT ;
typedef int relax_substateT ;
typedef int offsetT ;
struct TYPE_4__ {int bss; } ;
struct TYPE_3__ {int * fr_symbol; } ;


 scalar_t__ C_EXT ;
 int C_STAT ;
 scalar_t__ OUTPUT_FLAVOR ;
 int SEC_ALLOC ;
 int SKIP_WHITESPACE () ;
 scalar_t__ S_GET_DESC (int *) ;
 int S_GET_NAME (int *) ;
 scalar_t__ S_GET_OTHER (int *) ;
 scalar_t__ S_GET_SEGMENT (int *) ;
 scalar_t__ S_GET_STORAGE_CLASS (int *) ;
 scalar_t__ S_GET_VALUE (int *) ;
 int S_IS_DEFINED (int *) ;
 int S_SET_SEGMENT (int *,scalar_t__) ;
 int S_SET_SIZE (int *,int) ;
 int S_SET_STORAGE_CLASS (int *,int ) ;
 int TC_IMPLICIT_LCOMM_ALIGNMENT (int,int) ;
 int _ (char*) ;
 int abort () ;
 int as_bad (int ,...) ;
 int as_warn (int ,...) ;
 int bfd_errmsg (int ) ;
 int bfd_get_error () ;
 unsigned int bfd_get_gp_size (int ) ;
 int bfd_set_section_flags (int ,scalar_t__,int ) ;
 scalar_t__ bfd_target_aout_flavour ;
 scalar_t__ bfd_target_ecoff_flavour ;
 scalar_t__ bfd_target_elf_flavour ;
 scalar_t__ bss_section ;
 int demand_empty_rest_of_line () ;
 int discard_rest_of_line () ;
 int ffs (int) ;
 int frag_align (int,int ,int ) ;
 int frag_now ;
 char* frag_var (int ,int,int,int ,int *,int ,int *) ;
 int get_absolute_expression () ;
 char get_symbol_end () ;
 int ignore_rest_of_line () ;
 char* input_line_pointer ;
 scalar_t__* is_end_of_line ;
 scalar_t__ now_seg ;
 int now_subseg ;
 int record_alignment (scalar_t__,int) ;
 int rs_org ;
 TYPE_2__* seg_info (scalar_t__) ;
 int stdoutput ;
 scalar_t__ subseg_new (char*,int) ;
 int subseg_set (scalar_t__,int) ;
 int * symbol_find_or_make (char*) ;
 TYPE_1__* symbol_get_frag (int *) ;
 int symbol_set_frag (int *,int ) ;

__attribute__((used)) static void
s_score_lcomm (int bytes_p)
{
  char *name;
  char c;
  char *p;
  int temp;
  symbolS *symbolP;
  segT current_seg = now_seg;
  subsegT current_subseg = now_subseg;
  const int max_alignment = 15;
  int align = 0;
  segT bss_seg = bss_section;
  int needs_align = 0;

  name = input_line_pointer;
  c = get_symbol_end ();
  p = input_line_pointer;
  *p = c;

  if (name == p)
    {
      as_bad (_("expected symbol name"));
      discard_rest_of_line ();
      return;
    }

  SKIP_WHITESPACE ();



  if (*input_line_pointer == ',')
    {
      ++input_line_pointer;
      SKIP_WHITESPACE ();
    }

  if (is_end_of_line[(unsigned char)*input_line_pointer])
    {
      as_bad (_("missing size expression"));
      return;
    }

  if ((temp = get_absolute_expression ()) < 0)
    {
      as_warn (_("BSS length (%d) < 0 ignored"), temp);
      ignore_rest_of_line ();
      return;
    }
  SKIP_WHITESPACE ();
  if (*input_line_pointer == ',')
    {
      ++input_line_pointer;
      SKIP_WHITESPACE ();

      if (is_end_of_line[(unsigned char)*input_line_pointer])
        {
          as_bad (_("missing alignment"));
          return;
        }
      else
        {
          align = get_absolute_expression ();
          needs_align = 1;
        }
    }

  if (!needs_align)
    {
      TC_IMPLICIT_LCOMM_ALIGNMENT (temp, align);


      if (align)
        record_alignment (bss_seg, align);
    }

  if (needs_align)
    {
      if (bytes_p)
        {

          if (align != 0)
            {
              unsigned int i;

              for (i = 0; align != 0; align >>= 1, ++i)
                ;
              align = i - 1;
            }
        }

      if (align > max_alignment)
        {
          align = max_alignment;
          as_warn (_("alignment too large; %d assumed"), align);
        }
      else if (align < 0)
        {
          align = 0;
          as_warn (_("alignment negative; 0 assumed"));
        }

      record_alignment (bss_seg, align);
    }
  else
    {
    }

  *p = 0;
  symbolP = symbol_find_or_make (name);
  *p = c;

  if (
       (S_GET_SEGMENT (symbolP) == bss_seg || (!S_IS_DEFINED (symbolP) && S_GET_VALUE (symbolP) == 0)))
    {
      char *pfrag;

      subseg_set (bss_seg, 1);

      if (align)
        frag_align (align, 0, 0);


      if (S_GET_SEGMENT (symbolP) == bss_seg)
        symbol_get_frag (symbolP)->fr_symbol = ((void*)0);

      symbol_set_frag (symbolP, frag_now);
      pfrag = frag_var (rs_org, 1, 1, (relax_substateT) 0, symbolP, (offsetT) temp, ((void*)0));
      *pfrag = 0;


      S_SET_SEGMENT (symbolP, bss_seg);
    }
  else
    as_bad (_("symbol `%s' is already defined"), S_GET_NAME (symbolP));

  subseg_set (current_seg, current_subseg);

  demand_empty_rest_of_line ();
}
