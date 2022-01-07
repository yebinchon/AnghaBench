
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int valueT ;
typedef int symbolS ;
typedef int offsetT ;
struct TYPE_6__ {scalar_t__ X_op; int X_unsigned; } ;
typedef TYPE_2__ expressionS ;
struct TYPE_7__ {TYPE_1__* arch_info; } ;
struct TYPE_5__ {int bits_per_address; } ;
typedef int S_GET_OTHER ;


 scalar_t__ O_absent ;
 int SKIP_WHITESPACE () ;
 int S_CLEAR_VOLATILE (int *) ;
 int S_GET_VALUE (int *) ;
 int S_IS_COMMON (int *) ;
 scalar_t__ S_IS_DEFINED (int *) ;
 int S_IS_VOLATILE (int *) ;
 int S_SET_EXTERNAL (int *) ;
 int S_SET_SEGMENT (int *,int ) ;
 int S_SET_VALUE (int *,int ) ;
 int _ (char*) ;
 int as_bad (int ,...) ;
 int as_warn (int ,...) ;
 int bfd_com_section_ptr ;
 int const_flag ;
 int demand_empty_rest_of_line () ;
 scalar_t__ flag_mri ;
 int get_absolute_expr (TYPE_2__*) ;
 char get_symbol_end () ;
 int ignore_rest_of_line () ;
 char* input_line_pointer ;
 int mri_comment_end (char*,char) ;
 char* mri_comment_field (char*) ;
 TYPE_3__* stdoutput ;
 int * stub1 (int,int *,...) ;
 int * symbol_clone (int *,int) ;
 scalar_t__ symbol_equated_p (int *) ;
 int * symbol_find_or_make (char*) ;
 int symbol_set_frag (int *,int *) ;
 int undefined_section ;
 int zero_address_frag ;

symbolS *
s_comm_internal (int param,
   symbolS *(*comm_parse_extra) (int, symbolS *, addressT))
{
  char *name;
  char c;
  char *p;
  offsetT temp, size;
  symbolS *symbolP = ((void*)0);
  char *stop = ((void*)0);
  char stopc = 0;
  expressionS exp;

  if (flag_mri)
    stop = mri_comment_field (&stopc);

  name = input_line_pointer;
  c = get_symbol_end ();

  p = input_line_pointer;
  *p = c;

  if (name == p)
    {
      as_bad (_("expected symbol name"));
      ignore_rest_of_line ();
      goto out;
    }

  SKIP_WHITESPACE ();



  if (*input_line_pointer == ',')
    input_line_pointer++;

  temp = get_absolute_expr (&exp);
  size = temp;
  size &= ((offsetT) 2 << (stdoutput->arch_info->bits_per_address - 1)) - 1;
  if (exp.X_op == O_absent)
    {
      as_bad (_("missing size expression"));
      ignore_rest_of_line ();
      goto out;
    }
  else if (temp != size || !exp.X_unsigned)
    {
      as_warn (_("size (%ld) out of range, ignored"), (long) temp);
      ignore_rest_of_line ();
      goto out;
    }

  *p = 0;
  symbolP = symbol_find_or_make (name);
  if ((S_IS_DEFINED (symbolP) || symbol_equated_p (symbolP))
      && !S_IS_COMMON (symbolP))
    {
      if (!S_IS_VOLATILE (symbolP))
 {
   symbolP = ((void*)0);
   as_bad (_("symbol `%s' is already defined"), name);
   *p = c;
   ignore_rest_of_line ();
   goto out;
 }
      symbolP = symbol_clone (symbolP, 1);
      S_SET_SEGMENT (symbolP, undefined_section);
      S_SET_VALUE (symbolP, 0);
      symbol_set_frag (symbolP, &zero_address_frag);
      S_CLEAR_VOLATILE (symbolP);
    }

  size = S_GET_VALUE (symbolP);
  if (size == 0)
    size = temp;
  else if (size != temp)
    as_warn (_("size of \"%s\" is already %ld; not changing to %ld"),
      name, (long) size, (long) temp);

  *p = c;
  if (comm_parse_extra != ((void*)0))
    symbolP = (*comm_parse_extra) (param, symbolP, size);
  else
    {
      S_SET_VALUE (symbolP, (valueT) size);
      S_SET_EXTERNAL (symbolP);
      S_SET_SEGMENT (symbolP, bfd_com_section_ptr);







    }

  demand_empty_rest_of_line ();
 out:
  if (flag_mri)
    mri_comment_end (stop, stopc);
  return symbolP;
}
