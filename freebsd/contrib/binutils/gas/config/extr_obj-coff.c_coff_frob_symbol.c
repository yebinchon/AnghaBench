
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_13__ ;
typedef struct TYPE_17__ TYPE_12__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct TYPE_21__ {int x_dimen; } ;
struct TYPE_22__ {TYPE_3__ x_ary; } ;
struct TYPE_23__ {TYPE_4__ x_fcnary; } ;
union internal_auxent {TYPE_5__ x_sym; } ;
typedef int symbolS ;
struct TYPE_19__ {int offset; int * sym; } ;
struct TYPE_24__ {TYPE_1__ u; scalar_t__ line_number; } ;
struct line_no {struct line_no* next; TYPE_6__ l; TYPE_2__* frag; } ;
typedef int stack ;
typedef TYPE_6__ alent ;
struct TYPE_25__ {int X_add_symbol; } ;
struct TYPE_20__ {int fr_address; } ;
struct TYPE_18__ {TYPE_6__* lineno; } ;
struct TYPE_17__ {int * sym; } ;
struct TYPE_16__ {int flags; } ;
struct TYPE_15__ {int output; } ;


 int BSF_FUNCTION ;
 int BSF_NOT_AT_END ;
 int BSF_SECTION_SYM ;
 scalar_t__ C_BLOCK ;
 scalar_t__ C_EFCN ;
 scalar_t__ C_EOS ;
 scalar_t__ C_EXT ;
 scalar_t__ C_FCN ;
 scalar_t__ C_FILE ;
 scalar_t__ C_LABEL ;
 scalar_t__ C_NT_WEAK ;
 scalar_t__ C_NULL ;
 scalar_t__ C_STAT ;
 scalar_t__ C_WEAKEXT ;
 int OCTETS_PER_BYTE ;
 int SA_SET_SYM_ENDNDX (int *,int *) ;
 int SA_SET_SYM_FSIZE (int *,long) ;
 int SA_SET_SYM_TAGNDX (int *,int ) ;
 int SF_GET_DEBUG (int *) ;
 scalar_t__ SF_GET_FUNCTION (int *) ;
 scalar_t__ SF_GET_LOCAL (int *) ;
 scalar_t__ SF_GET_PROCESS (int *) ;
 int SF_GET_STATICS (int *) ;
 scalar_t__ SF_GET_TAG (int *) ;
 union internal_auxent* SYM_AUXENT (int *) ;
 int S_CLEAR_EXTERNAL (int *) ;
 int S_GET_NAME (int *) ;
 int S_GET_NUMBER_AUXILIARY (int *) ;
 scalar_t__ S_GET_SEGMENT (int *) ;
 scalar_t__ S_GET_STORAGE_CLASS (int *) ;
 scalar_t__ S_GET_VALUE (int *) ;
 scalar_t__ S_IS_COMMON (int *) ;
 scalar_t__ S_IS_DEFINED (int *) ;
 scalar_t__ S_IS_EXTERNAL (int *) ;
 scalar_t__ S_IS_WEAK (int *) ;
 scalar_t__ S_IS_WEAKREFD (int *) ;
 int S_SET_EXTERNAL (int *) ;
 int S_SET_NAME (int *,int ) ;
 int S_SET_NUMBER_AUXILIARY (int *,int) ;
 int S_SET_SEGMENT (int *,scalar_t__) ;
 int S_SET_STORAGE_CLASS (int *,scalar_t__) ;
 int S_SET_VALUE (int *,int ) ;
 int _ (char*) ;
 int abs_symbol ;
 scalar_t__ absolute_section ;
 int as_bad (int ,int ) ;
 int as_fatal (int ,int ) ;
 int as_warn (char*,...) ;
 int assert (int) ;
 int c_symbol_merge (int *,int *) ;
 int coff_add_linesym (int *) ;
 int * coff_last_bf ;
 int * coff_last_function ;
 TYPE_13__* coffsymbol (TYPE_11__*) ;
 scalar_t__ current_lineno_sym ;
 int memset (int ,int ,int) ;
 TYPE_12__* seg_info (scalar_t__) ;
 int * stack_init (int,int) ;
 scalar_t__ stack_pop (int *) ;
 int stack_push (int *,char*) ;
 scalar_t__ streq (int ,char*) ;
 scalar_t__ symbol_constant_p (int *) ;
 scalar_t__ symbol_equated_p (int *) ;
 int * symbol_find_noref (int ,int) ;
 TYPE_11__* symbol_get_bfdsym (int *) ;
 int symbol_get_frag (int *) ;
 TYPE_10__* symbol_get_tc (int *) ;
 TYPE_8__* symbol_get_value_expression (int *) ;
 int symbol_set_frag (int *,int ) ;
 int symbol_set_value_expression (int *,TYPE_8__*) ;
 int symbol_used_in_reloc_p (int *) ;
 scalar_t__ text_section ;
 scalar_t__ undefined_section ;
 int weak_altname2name (int ) ;
 scalar_t__ weak_is_altname (int ) ;
 int weak_uniquify (int ) ;
 TYPE_6__* xmalloc (int) ;

void
coff_frob_symbol (symbolS *symp, int *punt)
{
  static symbolS *last_tagP;
  static stack *block_stack;
  static symbolS *set_end;
  symbolS *next_set_end = ((void*)0);

  if (symp == &abs_symbol)
    {
      *punt = 1;
      return;
    }

  if (current_lineno_sym)
    coff_add_linesym (((void*)0));

  if (!block_stack)
    block_stack = stack_init (512, sizeof (symbolS*));
  if (S_IS_WEAK (symp))
    S_SET_STORAGE_CLASS (symp, C_WEAKEXT);


  if (!S_IS_DEFINED (symp)
      && !S_IS_WEAK (symp)
      && S_GET_STORAGE_CLASS (symp) != C_STAT)
    S_SET_STORAGE_CLASS (symp, C_EXT);

  if (!SF_GET_DEBUG (symp))
    {
      symbolS * real;

      if (!SF_GET_LOCAL (symp)
   && !SF_GET_STATICS (symp)
   && S_GET_STORAGE_CLASS (symp) != C_LABEL
   && symbol_constant_p (symp)
   && (real = symbol_find_noref (S_GET_NAME (symp), 1))
   && S_GET_STORAGE_CLASS (real) == C_NULL
   && real != symp)
 {
   c_symbol_merge (symp, real);
   *punt = 1;
   return;
 }

      if (!S_IS_DEFINED (symp) && !SF_GET_LOCAL (symp))
 {
   assert (S_GET_VALUE (symp) == 0);
   if (S_IS_WEAKREFD (symp))
     *punt = 1;
   else
     S_SET_EXTERNAL (symp);
 }
      else if (S_GET_STORAGE_CLASS (symp) == C_NULL)
 {
   if (S_GET_SEGMENT (symp) == text_section
       && symp != seg_info (text_section)->sym)
     S_SET_STORAGE_CLASS (symp, C_LABEL);
   else
     S_SET_STORAGE_CLASS (symp, C_STAT);
 }

      if (SF_GET_PROCESS (symp))
 {
   if (S_GET_STORAGE_CLASS (symp) == C_BLOCK)
     {
       if (streq (S_GET_NAME (symp), ".bb"))
  stack_push (block_stack, (char *) &symp);
       else
  {
    symbolS *begin;

    begin = *(symbolS **) stack_pop (block_stack);
    if (begin == 0)
      as_warn (_("mismatched .eb"));
    else
      next_set_end = begin;
  }
     }

   if (coff_last_function == 0 && SF_GET_FUNCTION (symp))
     {
       union internal_auxent *auxp;

       coff_last_function = symp;
       if (S_GET_NUMBER_AUXILIARY (symp) < 1)
  S_SET_NUMBER_AUXILIARY (symp, 1);
       auxp = SYM_AUXENT (symp);
       memset (auxp->x_sym.x_fcnary.x_ary.x_dimen, 0,
        sizeof (auxp->x_sym.x_fcnary.x_ary.x_dimen));
     }

   if (S_GET_STORAGE_CLASS (symp) == C_EFCN)
     {
       if (coff_last_function == 0)
  as_fatal (_("C_EFCN symbol for %s out of scope"),
     S_GET_NAME (symp));
       SA_SET_SYM_FSIZE (coff_last_function,
    (long) (S_GET_VALUE (symp)
     - S_GET_VALUE (coff_last_function)));
       next_set_end = coff_last_function;
       coff_last_function = 0;
     }
 }

      if (S_IS_EXTERNAL (symp))
 S_SET_STORAGE_CLASS (symp, C_EXT);
      else if (SF_GET_LOCAL (symp))
 *punt = 1;

      if (SF_GET_FUNCTION (symp))
 symbol_get_bfdsym (symp)->flags |= BSF_FUNCTION;
    }


  if (S_IS_WEAK (symp) && S_IS_COMMON (symp))
    as_bad (_("Symbol `%s' can not be both weak and common"),
     S_GET_NAME (symp));

  if (SF_GET_TAG (symp))
    last_tagP = symp;
  else if (S_GET_STORAGE_CLASS (symp) == C_EOS)
    next_set_end = last_tagP;
  if (set_end != (symbolS *) ((void*)0)
      && ! *punt
      && ((symbol_get_bfdsym (symp)->flags & BSF_NOT_AT_END) != 0
   || (S_IS_DEFINED (symp)
       && ! S_IS_COMMON (symp)
       && (! S_IS_EXTERNAL (symp) || SF_GET_FUNCTION (symp)))))
    {
      SA_SET_SYM_ENDNDX (set_end, symp);
      set_end = ((void*)0);
    }

  if (next_set_end != ((void*)0))
    {
      if (set_end != ((void*)0))
 as_warn ("Warning: internal error: forgetting to set endndx of %s",
   S_GET_NAME (set_end));
      set_end = next_set_end;
    }


  if (! *punt
      && S_GET_STORAGE_CLASS (symp) == C_FCN
      && streq (S_GET_NAME (symp), ".bf"))
    {
      if (coff_last_bf != ((void*)0))
 SA_SET_SYM_ENDNDX (coff_last_bf, symp);
      coff_last_bf = symp;
    }

  if (coffsymbol (symbol_get_bfdsym (symp))->lineno)
    {
      int i;
      struct line_no *lptr;
      alent *l;

      lptr = (struct line_no *) coffsymbol (symbol_get_bfdsym (symp))->lineno;
      for (i = 0; lptr; lptr = lptr->next)
 i++;
      lptr = (struct line_no *) coffsymbol (symbol_get_bfdsym (symp))->lineno;




      l = xmalloc ((i + 2) * sizeof (* l));
      coffsymbol (symbol_get_bfdsym (symp))->lineno = l;
      l[i + 1].line_number = 0;
      l[i + 1].u.sym = ((void*)0);
      for (; i > 0; i--)
 {
   if (lptr->frag)
     lptr->l.u.offset += lptr->frag->fr_address / OCTETS_PER_BYTE;
   l[i] = lptr->l;
   lptr = lptr->next;
 }
    }
}
