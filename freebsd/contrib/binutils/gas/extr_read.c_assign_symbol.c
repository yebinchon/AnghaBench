
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int symbolS ;
struct list_info_struct {int dummy; } ;
typedef int segT ;
struct TYPE_3__ {int * fr_symbol; struct list_info_struct* line; } ;
typedef TYPE_1__ fragS ;
typedef int expressionS ;


 int LISTING_SYMBOLS ;
 int SF_SET_LOCAL (int *) ;
 scalar_t__ S_GET_SEGMENT (int *) ;
 scalar_t__ S_IS_DEFINED (int *) ;
 scalar_t__ S_IS_VOLATILE (int *) ;
 int S_SET_FORWARD_REF (int *) ;
 int S_SET_VOLATILE (int *) ;
 int _ (char*) ;
 int as_bad (int ,char*) ;
 int do_org (int ,int *,int ) ;
 int get_known_segmented_expression (int *) ;
 int listing ;
 int * md_undefined_symbol (char*) ;
 int need_pass_2 ;
 int pseudo_set (int *) ;
 scalar_t__ reg_section ;
 int * symbol_clone (int *,int) ;
 scalar_t__ symbol_equated_p (int *) ;
 int * symbol_find (char*) ;
 int * symbol_find_or_make (char*) ;
 int symbol_set_frag (int *,TYPE_1__*) ;
 scalar_t__ xcalloc (int,int) ;

__attribute__((used)) static void
assign_symbol (char *name, int mode)
{
  symbolS *symbolP;

  if (name[0] == '.' && name[1] == '\0')
    {

      segT segment;
      expressionS exp;

      segment = get_known_segmented_expression (&exp);

      if (!need_pass_2)
 do_org (segment, &exp, 0);

      return;
    }

  if ((symbolP = symbol_find (name)) == ((void*)0)
      && (symbolP = md_undefined_symbol (name)) == ((void*)0))
    {
      symbolP = symbol_find_or_make (name);




      if (listing & LISTING_SYMBOLS)
 {
   extern struct list_info_struct *listing_tail;
   fragS *dummy_frag = (fragS *) xcalloc (1, sizeof (fragS));
   dummy_frag->line = listing_tail;
   dummy_frag->fr_symbol = symbolP;
   symbol_set_frag (symbolP, dummy_frag);
 }





    }

  if (S_IS_DEFINED (symbolP) || symbol_equated_p (symbolP))
    {

      if ((mode != 0 || !S_IS_VOLATILE (symbolP))
   && S_GET_SEGMENT (symbolP) != reg_section)
 {
   as_bad (_("symbol `%s' is already defined"), name);
   symbolP = symbol_clone (symbolP, 0);
 }



      else if (S_IS_VOLATILE (symbolP))
 symbolP = symbol_clone (symbolP, 1);
    }

  if (mode == 0)
    S_SET_VOLATILE (symbolP);
  else if (mode < 0)
    S_SET_FORWARD_REF (symbolP);

  pseudo_set (symbolP);
}
