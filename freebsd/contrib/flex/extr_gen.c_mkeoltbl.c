
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yytbl_data {int td_lolen; int* td_data; int td_flags; } ;
typedef int flex_int8_t ;


 int YYTD_DATA8 ;
 int YYTD_ID_RULE_CAN_MATCH_EOL ;
 int buf_prints (int *,char*,char*) ;
 scalar_t__ calloc (int,int) ;
 int num_rules ;
 scalar_t__* rule_has_nl ;
 int yydmap_buf ;
 int yytbl_data_init (struct yytbl_data*,int ) ;

__attribute__((used)) static struct yytbl_data *mkeoltbl (void)
{
 int i;
 flex_int8_t *tdata = 0;
 struct yytbl_data *tbl;

 tbl = (struct yytbl_data *) calloc (1, sizeof (struct yytbl_data));
 yytbl_data_init (tbl, YYTD_ID_RULE_CAN_MATCH_EOL);
 tbl->td_flags = YYTD_DATA8;
 tbl->td_lolen = num_rules + 1;
 tbl->td_data = tdata =
  (flex_int8_t *) calloc (tbl->td_lolen, sizeof (flex_int8_t));

 for (i = 1; i <= num_rules; i++)
  tdata[i] = rule_has_nl[i] ? 1 : 0;

 buf_prints (&yydmap_buf,
      "\t{YYTD_ID_RULE_CAN_MATCH_EOL, (void**)&yy_rule_can_match_eol, sizeof(%s)},\n",
      "flex_int32_t");
 return tbl;
}
