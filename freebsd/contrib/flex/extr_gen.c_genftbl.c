
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dfaacc_state; } ;


 char* _ (char*) ;
 int dataend () ;
 TYPE_1__* dfaacc ;
 size_t end_of_buffer_state ;
 int fprintf (int ,char*,int,int) ;
 int genecs () ;
 int get_int16_decl () ;
 int get_int32_decl () ;
 int lastdfa ;
 scalar_t__ long_align ;
 int mkdata (int) ;
 int num_rules ;
 int out_str_dec (int ,char*,int) ;
 int stderr ;
 scalar_t__ trace ;
 scalar_t__ useecs ;

void genftbl ()
{
 int i;
 int end_of_buffer_action = num_rules + 1;

 out_str_dec (long_align ? get_int32_decl () : get_int16_decl (),
       "yy_accept", lastdfa + 1);

 dfaacc[end_of_buffer_state].dfaacc_state = end_of_buffer_action;

 for (i = 1; i <= lastdfa; ++i) {
  int anum = dfaacc[i].dfaacc_state;

  mkdata (anum);

  if (trace && anum)
   fprintf (stderr, _("state # %d accepts: [%d]\n"),
     i, anum);
 }

 dataend ();

 if (useecs)
  genecs ();




}
