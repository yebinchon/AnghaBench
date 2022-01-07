
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int symbolS ;
struct conditional_frame {int ignoring; TYPE_1__* previous_cframe; scalar_t__ dead_tree; } ;
typedef int cframe ;
struct TYPE_2__ {int ignoring; } ;


 scalar_t__ LISTING_SKIP_COND () ;
 int SKIP_WHITESPACE () ;
 scalar_t__ S_GET_SEGMENT (int *) ;
 scalar_t__ S_IS_DEFINED (int *) ;
 int _ (char*) ;
 int as_bad (int ) ;
 int cond_obstack ;
 struct conditional_frame* current_cframe ;
 int demand_empty_rest_of_line () ;
 char get_symbol_end () ;
 int ignore_rest_of_line () ;
 int initialize_cframe (struct conditional_frame*) ;
 char* input_line_pointer ;
 int is_name_beginner (char) ;
 int listing_list (int) ;
 int obstack_1grow (int *,int ) ;
 scalar_t__ obstack_copy (int *,struct conditional_frame*,int) ;
 scalar_t__ reg_section ;
 scalar_t__ symbol_equated_p (int *) ;
 int * symbol_find (char*) ;

void
s_ifdef (int test_defined)
{

  char *name;

  symbolS *symbolP;
  struct conditional_frame cframe;
  char c;


  SKIP_WHITESPACE ();
  name = input_line_pointer;

  if (!is_name_beginner (*name))
    {
      as_bad (_("invalid identifier for \".ifdef\""));
      obstack_1grow (&cond_obstack, 0);
      ignore_rest_of_line ();
      return;
    }

  c = get_symbol_end ();
  symbolP = symbol_find (name);
  *input_line_pointer = c;

  initialize_cframe (&cframe);

  if (cframe.dead_tree)
    cframe.ignoring = 1;
  else
    {
      int is_defined;




      is_defined =
 symbolP != ((void*)0)
 && (S_IS_DEFINED (symbolP) || symbol_equated_p (symbolP))
 && S_GET_SEGMENT (symbolP) != reg_section;

      cframe.ignoring = ! (test_defined ^ is_defined);
    }

  current_cframe = ((struct conditional_frame *)
      obstack_copy (&cond_obstack, &cframe,
      sizeof (cframe)));

  if (LISTING_SKIP_COND ()
      && cframe.ignoring
      && (cframe.previous_cframe == ((void*)0)
   || ! cframe.previous_cframe->ignoring))
    listing_list (2);

  demand_empty_rest_of_line ();
}
