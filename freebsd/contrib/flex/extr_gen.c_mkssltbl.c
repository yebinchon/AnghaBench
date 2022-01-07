
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yytbl_data {int td_flags; int td_lolen; int* td_data; scalar_t__ td_hilen; } ;
typedef int flex_int32_t ;


 int YYTD_DATA32 ;
 int YYTD_ID_START_STATE_LIST ;
 int YYTD_PTRANS ;
 int* base ;
 int buf_prints (int *,char*,char*) ;
 scalar_t__ calloc (int,int) ;
 int lastsc ;
 int yydmap_buf ;
 int yytbl_data_init (struct yytbl_data*,int ) ;

__attribute__((used)) static struct yytbl_data *mkssltbl (void)
{
 struct yytbl_data *tbl = 0;
 flex_int32_t *tdata = 0;
 flex_int32_t i;

 tbl = (struct yytbl_data *) calloc (1, sizeof (struct yytbl_data));
 yytbl_data_init (tbl, YYTD_ID_START_STATE_LIST);
 tbl->td_flags = YYTD_DATA32 | YYTD_PTRANS;
 tbl->td_hilen = 0;
 tbl->td_lolen = lastsc * 2 + 1;

 tbl->td_data = tdata =
  (flex_int32_t *) calloc (tbl->td_lolen, sizeof (flex_int32_t));

 for (i = 0; i <= lastsc * 2; ++i)
  tdata[i] = base[i];

 buf_prints (&yydmap_buf,
      "\t{YYTD_ID_START_STATE_LIST, (void**)&yy_start_state_list, sizeof(%s)},\n",
      "struct yy_trans_info*");

 return tbl;
}
