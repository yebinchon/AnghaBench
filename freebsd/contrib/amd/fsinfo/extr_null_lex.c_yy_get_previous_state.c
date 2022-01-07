
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* yytext_ptr ;
typedef size_t yy_state_type ;
typedef size_t YY_CHAR ;


 scalar_t__ YY_MORE_ADJ ;
 size_t YY_SC_TO_UI (char) ;
 scalar_t__* yy_accept ;
 size_t* yy_base ;
 char* yy_c_buf_p ;
 size_t* yy_chk ;
 scalar_t__* yy_def ;
 int* yy_ec ;
 char* yy_last_accepting_cpos ;
 size_t yy_last_accepting_state ;
 size_t* yy_meta ;
 size_t* yy_nxt ;
 size_t yy_start ;

__attribute__((used)) static yy_state_type yy_get_previous_state (void)
{
 register yy_state_type yy_current_state;
 register char *yy_cp;

 yy_current_state = (yy_start);

 for ( yy_cp = (yytext_ptr) + YY_MORE_ADJ; yy_cp < (yy_c_buf_p); ++yy_cp )
  {
  register YY_CHAR yy_c = (*yy_cp ? yy_ec[YY_SC_TO_UI(*yy_cp)] : 1);
  if ( yy_accept[yy_current_state] )
   {
   (yy_last_accepting_state) = yy_current_state;
   (yy_last_accepting_cpos) = yy_cp;
   }
  while ( yy_chk[yy_base[yy_current_state] + yy_c] != yy_current_state )
   {
   yy_current_state = (int) yy_def[yy_current_state];
   if ( yy_current_state >= 6 )
    yy_c = yy_meta[(unsigned int) yy_c];
   }
  yy_current_state = yy_nxt[yy_base[yy_current_state] + (unsigned int) yy_c];
  }

 return yy_current_state;
}
