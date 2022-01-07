
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dfaacc_state; } ;


 int ACTION_POSITION ;
 int EOB_POSITION ;
 int* base ;
 int* chk ;
 int current_max_dfas ;
 int current_max_xpairs ;
 int dataend () ;
 TYPE_1__* dfaacc ;
 int expand_nxt_chk () ;
 int genecs () ;
 scalar_t__ gentables ;
 int increase_max_dfas () ;
 int lastdfa ;
 int lastsc ;
 int num_rules ;
 int numecs ;
 size_t* nxt ;
 int out_dec (char*,int) ;
 int outn (char*) ;
 int tblend ;
 int transition_struct_out (int,size_t) ;
 scalar_t__ useecs ;

void genctbl ()
{
 int i;
 int end_of_buffer_action = num_rules + 1;


 if (gentables)
  out_dec ("static yyconst struct yy_trans_info yy_transition[%d] =\n    {\n", tblend + numecs + 1);
 else
  outn ("static yyconst struct yy_trans_info *yy_transition = 0;");
 while (tblend + 2 >= current_max_xpairs)
  expand_nxt_chk ();

 while (lastdfa + 1 >= current_max_dfas)
  increase_max_dfas ();

 base[lastdfa + 1] = tblend + 2;
 nxt[tblend + 1] = end_of_buffer_action;
 chk[tblend + 1] = numecs + 1;
 chk[tblend + 2] = 1;


 nxt[tblend + 2] = 0;




 for (i = 0; i <= lastdfa; ++i) {
  int anum = dfaacc[i].dfaacc_state;
  int offset = base[i];

  chk[offset] = EOB_POSITION;
  chk[offset - 1] = ACTION_POSITION;
  nxt[offset - 1] = anum;
 }

 for (i = 0; i <= tblend; ++i) {
  if (chk[i] == EOB_POSITION)
   transition_struct_out (0, base[lastdfa + 1] - i);

  else if (chk[i] == ACTION_POSITION)
   transition_struct_out (0, nxt[i]);

  else if (chk[i] > numecs || chk[i] == 0)
   transition_struct_out (0, 0);

  else
   transition_struct_out (chk[i],
            base[nxt[i]] - (i -
              chk[i]));
 }



 transition_struct_out (chk[tblend + 1], nxt[tblend + 1]);
 transition_struct_out (chk[tblend + 2], nxt[tblend + 2]);

 if (gentables)
  outn ("    };\n");


 if (gentables)
  out_dec ("static yyconst struct yy_trans_info *yy_start_state_list[%d] =\n", lastsc * 2 + 1);
 else
  outn ("static yyconst struct yy_trans_info **yy_start_state_list =0;");

 if (gentables) {
  outn ("    {");

  for (i = 0; i <= lastsc * 2; ++i)
   out_dec ("    &yy_transition[%d],\n", base[i]);

  dataend ();
 }

 if (useecs)
  genecs ();
}
