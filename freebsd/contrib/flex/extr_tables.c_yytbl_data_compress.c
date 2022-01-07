
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yytbl_data {int td_flags; int td_data; int td_lolen; int td_hilen; int td_id; } ;
typedef int flex_int32_t ;


 int BYTES2TFLAG (int) ;
 int TFLAGS_CLRDATA (int) ;
 scalar_t__ YYTDFLAGS2BYTES (int) ;
 int _ (char*) ;
 int calloc (int,int) ;
 int flex_die (int ) ;
 int free (int ) ;
 int min_int_size (struct yytbl_data*) ;
 int yytbl_calc_total_len (struct yytbl_data*) ;
 int yytbl_data_geti (struct yytbl_data*,int) ;
 int yytbl_data_init (struct yytbl_data*,int ) ;
 int yytbl_data_seti (struct yytbl_data*,int,int) ;

void yytbl_data_compress (struct yytbl_data *tbl)
{
 flex_int32_t i, newsz, total_len;
 struct yytbl_data newtbl;

 yytbl_data_init (&newtbl, tbl->td_id);
 newtbl.td_hilen = tbl->td_hilen;
 newtbl.td_lolen = tbl->td_lolen;
 newtbl.td_flags = tbl->td_flags;

 newsz = min_int_size (tbl);


 if (newsz == (int) YYTDFLAGS2BYTES (tbl->td_flags))

  return;

 if (newsz > (int) YYTDFLAGS2BYTES (tbl->td_flags)) {
  flex_die (_("detected negative compression"));
  return;
 }

 total_len = yytbl_calc_total_len (tbl);
 newtbl.td_data = calloc (total_len, newsz);
 newtbl.td_flags =
  TFLAGS_CLRDATA (newtbl.td_flags) | BYTES2TFLAG (newsz);

 for (i = 0; i < total_len; i++) {
  flex_int32_t g;

  g = yytbl_data_geti (tbl, i);
  yytbl_data_seti (&newtbl, i, g);
 }



 free (tbl->td_data);
 *tbl = newtbl;
}
