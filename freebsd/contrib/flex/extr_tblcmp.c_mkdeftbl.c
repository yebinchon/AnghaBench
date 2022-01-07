
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* base ;
 size_t* chk ;
 scalar_t__ current_max_xpairs ;
 scalar_t__* def ;
 scalar_t__ end_of_buffer_state ;
 int expand_nxt_chk () ;
 scalar_t__ jambase ;
 size_t jamstate ;
 size_t lastdfa ;
 scalar_t__ numecs ;
 int numtemps ;
 scalar_t__* nxt ;
 scalar_t__ tblend ;

void mkdeftbl ()
{
 int i;

 jamstate = lastdfa + 1;

 ++tblend;

 while (tblend + numecs >= current_max_xpairs)
  expand_nxt_chk ();


 nxt[tblend] = end_of_buffer_state;
 chk[tblend] = jamstate;

 for (i = 1; i <= numecs; ++i) {
  nxt[tblend + i] = 0;
  chk[tblend + i] = jamstate;
 }

 jambase = tblend;

 base[jamstate] = jambase;
 def[jamstate] = 0;

 tblend += numecs;
 ++numtemps;
}
