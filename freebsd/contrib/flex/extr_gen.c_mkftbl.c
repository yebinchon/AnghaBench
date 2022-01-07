
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct yytbl_data {int td_lolen; int* td_data; scalar_t__ td_hilen; int td_flags; } ;
typedef int flex_int32_t ;
struct TYPE_2__ {int dfaacc_state; } ;


 int YYTD_DATA32 ;
 int YYTD_ID_ACCEPT ;
 char* _ (char*) ;
 int buf_prints (int *,char*,char*) ;
 scalar_t__ calloc (int,int) ;
 TYPE_1__* dfaacc ;
 size_t end_of_buffer_state ;
 int fprintf (int ,char*,int,int) ;
 int lastdfa ;
 scalar_t__ long_align ;
 int num_rules ;
 int stderr ;
 scalar_t__ trace ;
 int yydmap_buf ;
 int yytbl_data_init (struct yytbl_data*,int ) ;

struct yytbl_data *mkftbl (void)
{
 int i;
 int end_of_buffer_action = num_rules + 1;
 struct yytbl_data *tbl;
 flex_int32_t *tdata = 0;

 tbl = (struct yytbl_data *) calloc (1, sizeof (struct yytbl_data));
 yytbl_data_init (tbl, YYTD_ID_ACCEPT);
 tbl->td_flags |= YYTD_DATA32;
 tbl->td_hilen = 0;
 tbl->td_lolen = lastdfa + 1;

 tbl->td_data = tdata =
  (flex_int32_t *) calloc (tbl->td_lolen, sizeof (flex_int32_t));

 dfaacc[end_of_buffer_state].dfaacc_state = end_of_buffer_action;

 for (i = 1; i <= lastdfa; ++i) {
  int anum = dfaacc[i].dfaacc_state;

  tdata[i] = anum;

  if (trace && anum)
   fprintf (stderr, _("state # %d accepts: [%d]\n"),
     i, anum);
 }

 buf_prints (&yydmap_buf,
      "\t{YYTD_ID_ACCEPT, (void**)&yy_accept, sizeof(%s)},\n",
      long_align ? "flex_int32_t" : "flex_int16_t");
 return tbl;
}
