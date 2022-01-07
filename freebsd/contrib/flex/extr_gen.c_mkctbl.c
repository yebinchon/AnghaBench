
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct yytbl_data {int td_flags; int td_lolen; int* td_data; scalar_t__ td_hilen; } ;
typedef int flex_int32_t ;
struct TYPE_2__ {int dfaacc_state; } ;


 scalar_t__ ACTION_POSITION ;
 scalar_t__ EOB_POSITION ;
 scalar_t__ INT16_MAX ;
 int YYTD_DATA32 ;
 int YYTD_ID_TRANSITION ;
 int YYTD_STRUCT ;
 int* base ;
 int buf_prints (int *,char*,char*) ;
 scalar_t__ calloc (int,int) ;
 scalar_t__* chk ;
 int current_max_dfas ;
 int current_max_xpairs ;
 TYPE_1__* dfaacc ;
 int expand_nxt_chk () ;
 int increase_max_dfas () ;
 int lastdfa ;
 scalar_t__ long_align ;
 int num_rules ;
 scalar_t__ numecs ;
 size_t* nxt ;
 int tblend ;
 int yydmap_buf ;
 int yytbl_data_init (struct yytbl_data*,int ) ;

__attribute__((used)) static struct yytbl_data *mkctbl (void)
{
 int i;
 struct yytbl_data *tbl = 0;
 flex_int32_t *tdata = 0, curr = 0;
 int end_of_buffer_action = num_rules + 1;

 buf_prints (&yydmap_buf,
      "\t{YYTD_ID_TRANSITION, (void**)&yy_transition, sizeof(%s)},\n",
      ((tblend + numecs + 1) >= INT16_MAX
       || long_align) ? "flex_int32_t" : "flex_int16_t");

 tbl = (struct yytbl_data *) calloc (1, sizeof (struct yytbl_data));
 yytbl_data_init (tbl, YYTD_ID_TRANSITION);
 tbl->td_flags = YYTD_DATA32 | YYTD_STRUCT;
 tbl->td_hilen = 0;
 tbl->td_lolen = tblend + numecs + 1;

 tbl->td_data = tdata =
  (flex_int32_t *) calloc (tbl->td_lolen * 2, sizeof (flex_int32_t));
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
  if (chk[i] == EOB_POSITION) {
   tdata[curr++] = 0;
   tdata[curr++] = base[lastdfa + 1] - i;
  }

  else if (chk[i] == ACTION_POSITION) {
   tdata[curr++] = 0;
   tdata[curr++] = nxt[i];
  }

  else if (chk[i] > numecs || chk[i] == 0) {
   tdata[curr++] = 0;
   tdata[curr++] = 0;
  }
  else {

   tdata[curr++] = chk[i];
   tdata[curr++] = base[nxt[i]] - (i - chk[i]);
  }
 }



 tdata[curr++] = chk[tblend + 1];
 tdata[curr++] = nxt[tblend + 1];

 tdata[curr++] = chk[tblend + 2];
 tdata[curr++] = nxt[tblend + 2];

 return tbl;
}
