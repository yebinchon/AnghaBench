
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct conditional_frame {int ignoring; TYPE_1__* previous_cframe; scalar_t__ dead_tree; } ;
typedef int cframe ;
struct TYPE_2__ {int ignoring; } ;


 scalar_t__ LISTING_SKIP_COND () ;
 int _ (char*) ;
 int as_bad (int ) ;
 int cond_obstack ;
 struct conditional_frame* current_cframe ;
 int demand_empty_rest_of_line () ;
 scalar_t__ flag_mri ;
 char* get_mri_string (char,int*) ;
 int initialize_cframe (struct conditional_frame*) ;
 char* input_line_pointer ;
 int listing_list (int) ;
 int mri_comment_end (char*,char) ;
 char* mri_comment_field (char*) ;
 scalar_t__ obstack_copy (int *,struct conditional_frame*,int) ;
 scalar_t__ strncmp (char*,char*,int) ;

void
s_ifc (int arg)
{
  char *stop = ((void*)0);
  char stopc;
  char *s1, *s2;
  int len1, len2;
  int res;
  struct conditional_frame cframe;

  if (flag_mri)
    stop = mri_comment_field (&stopc);

  s1 = get_mri_string (',', &len1);

  if (*input_line_pointer != ',')
    as_bad (_("bad format for ifc or ifnc"));
  else
    ++input_line_pointer;

  s2 = get_mri_string (';', &len2);

  res = len1 == len2 && strncmp (s1, s2, len1) == 0;

  initialize_cframe (&cframe);
  cframe.ignoring = cframe.dead_tree || ! (res ^ arg);
  current_cframe = ((struct conditional_frame *)
      obstack_copy (&cond_obstack, &cframe, sizeof (cframe)));

  if (LISTING_SKIP_COND ()
      && cframe.ignoring
      && (cframe.previous_cframe == ((void*)0)
   || ! cframe.previous_cframe->ignoring))
    listing_list (2);

  if (flag_mri)
    mri_comment_end (stop, stopc);

  demand_empty_rest_of_line ();
}
