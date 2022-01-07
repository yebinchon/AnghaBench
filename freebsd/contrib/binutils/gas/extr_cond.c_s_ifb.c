
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct conditional_frame {int ignoring; TYPE_1__* previous_cframe; scalar_t__ dead_tree; } ;
typedef int cframe ;
struct TYPE_2__ {int ignoring; } ;


 scalar_t__ LISTING_SKIP_COND () ;
 int SKIP_WHITESPACE () ;
 int cond_obstack ;
 struct conditional_frame* current_cframe ;
 int ignore_rest_of_line () ;
 int initialize_cframe (struct conditional_frame*) ;
 scalar_t__* input_line_pointer ;
 int* is_end_of_line ;
 int listing_list (int) ;
 scalar_t__ obstack_copy (int *,struct conditional_frame*,int) ;

void
s_ifb (int test_blank)
{
  struct conditional_frame cframe;

  initialize_cframe (&cframe);

  if (cframe.dead_tree)
    cframe.ignoring = 1;
  else
    {
      int is_eol;

      SKIP_WHITESPACE ();
      is_eol = is_end_of_line[(unsigned char) *input_line_pointer];
      cframe.ignoring = (test_blank == !is_eol);
    }

  current_cframe = ((struct conditional_frame *)
      obstack_copy (&cond_obstack, &cframe,
      sizeof (cframe)));

  if (LISTING_SKIP_COND ()
      && cframe.ignoring
      && (cframe.previous_cframe == ((void*)0)
   || ! cframe.previous_cframe->ignoring))
    listing_list (2);

  ignore_rest_of_line ();
}
