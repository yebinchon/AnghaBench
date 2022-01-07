
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int symbolS ;
struct list_info_struct {int dummy; } ;
struct TYPE_6__ {int * fr_symbol; struct list_info_struct* line; int fr_type; } ;
typedef TYPE_1__ fragS ;


 int ARM_SET_INTERWORK (int *,int ) ;
 int ARM_SET_THUMB (int *,int) ;
 int LISTING_SYMBOLS ;
 int SF_SET_LOCAL (int *) ;
 char* S_GET_NAME (int *) ;
 scalar_t__ S_GET_SEGMENT (int *) ;
 scalar_t__ S_IS_DEFINED (int *) ;
 int THUMB_SET_FUNC (int *,int) ;
 int _ (char*) ;
 int abort () ;
 int as_bad (int ,char*) ;
 int demand_empty_rest_of_line () ;
 char get_symbol_end () ;
 int ignore_rest_of_line () ;
 char* input_line_pointer ;
 int listing ;
 int * md_undefined_symbol (char*) ;
 int memset (TYPE_1__*,int ,int) ;
 int pseudo_set (int *) ;
 scalar_t__ reg_section ;
 int rs_fill ;
 int support_interwork ;
 int * symbol_find (char*) ;
 int * symbol_new (char*,int ,int ,TYPE_1__*) ;
 int symbol_table_insert (int *) ;
 int undefined_section ;
 TYPE_1__* xmalloc (int) ;
 TYPE_1__ zero_address_frag ;

__attribute__((used)) static void
s_thumb_set (int equiv)
{



  char * name;
  char delim;
  char * end_name;
  symbolS * symbolP;




  name = input_line_pointer;
  delim = get_symbol_end ();
  end_name = input_line_pointer;
  *end_name = delim;

  if (*input_line_pointer != ',')
    {
      *end_name = 0;
      as_bad (_("expected comma after name \"%s\""), name);
      *end_name = delim;
      ignore_rest_of_line ();
      return;
    }

  input_line_pointer++;
  *end_name = 0;

  if (name[0] == '.' && name[1] == '\0')
    {

      abort ();
    }

  if ((symbolP = symbol_find (name)) == ((void*)0)
      && (symbolP = md_undefined_symbol (name)) == ((void*)0))
    {




      if (listing & LISTING_SYMBOLS)
 {
   extern struct list_info_struct * listing_tail;
   fragS * dummy_frag = xmalloc (sizeof (fragS));

   memset (dummy_frag, 0, sizeof (fragS));
   dummy_frag->fr_type = rs_fill;
   dummy_frag->line = listing_tail;
   symbolP = symbol_new (name, undefined_section, 0, dummy_frag);
   dummy_frag->fr_symbol = symbolP;
 }
      else

 symbolP = symbol_new (name, undefined_section, 0, &zero_address_frag);





    }

  symbol_table_insert (symbolP);

  * end_name = delim;

  if (equiv
      && S_IS_DEFINED (symbolP)
      && S_GET_SEGMENT (symbolP) != reg_section)
    as_bad (_("symbol `%s' already defined"), S_GET_NAME (symbolP));

  pseudo_set (symbolP);

  demand_empty_rest_of_line ();



  THUMB_SET_FUNC (symbolP, 1);
  ARM_SET_THUMB (symbolP, 1);



}
