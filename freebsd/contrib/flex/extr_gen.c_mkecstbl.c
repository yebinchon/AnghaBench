
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yytbl_data {int td_lolen; int * td_data; scalar_t__ td_hilen; int td_flags; } ;
typedef int flex_int32_t ;


 int ABS (int ) ;
 int YYTD_DATA32 ;
 int YYTD_ID_EC ;
 int buf_prints (int *,char*,char*) ;
 scalar_t__ calloc (int,int) ;
 int csize ;
 int * ecgroup ;
 int yydmap_buf ;
 int yytbl_data_init (struct yytbl_data*,int ) ;

__attribute__((used)) static struct yytbl_data *mkecstbl (void)
{
 int i;
 struct yytbl_data *tbl = 0;
 flex_int32_t *tdata = 0;

 tbl = (struct yytbl_data *) calloc (1, sizeof (struct yytbl_data));
 yytbl_data_init (tbl, YYTD_ID_EC);
 tbl->td_flags |= YYTD_DATA32;
 tbl->td_hilen = 0;
 tbl->td_lolen = csize;

 tbl->td_data = tdata =
  (flex_int32_t *) calloc (tbl->td_lolen, sizeof (flex_int32_t));

 for (i = 1; i < csize; ++i) {
  ecgroup[i] = ABS (ecgroup[i]);
  tdata[i] = ecgroup[i];
 }

 buf_prints (&yydmap_buf,
      "\t{YYTD_ID_EC, (void**)&yy_ec, sizeof(%s)},\n",
      "flex_int32_t");

 return tbl;
}
