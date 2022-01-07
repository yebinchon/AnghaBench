
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct yytbl_data {int td_lolen; int* td_data; } ;
typedef int flex_int32_t ;
struct TYPE_2__ {int* dfaacc_set; int dfaacc_state; } ;


 int ABS (int ) ;
 int INT16_MAX ;
 int JAMSTATE ;
 int MAX (int ,int) ;
 scalar_t__ RULE_VARIABLE ;
 int YYTD_ID_ACCEPT ;
 int YYTD_ID_ACCLIST ;
 int YYTD_ID_BASE ;
 int YYTD_ID_CHK ;
 int YYTD_ID_DEF ;
 int YYTD_ID_META ;
 int YYTD_ID_NXT ;
 int YY_TRAILING_HEAD_MASK ;
 int YY_TRAILING_MASK ;
 char* _ (char*) ;
 int* accsiz ;
 int* allocate_integer_array (int ) ;
 int* base ;
 int buf_prints (int *,char*,char*) ;
 scalar_t__ calloc (int,int) ;
 int* chk ;
 int current_max_dfas ;
 int dataend () ;
 int* def ;
 TYPE_1__* dfaacc ;
 size_t end_of_buffer_state ;
 int flex_free (void*) ;
 int flexerror (char*) ;
 int fprintf (int ,char*,int,...) ;
 int fputs (char*,int ) ;
 int genecs () ;
 int get_int16_decl () ;
 int get_int32_decl () ;
 int jambase ;
 int jamstate ;
 int lastdfa ;
 scalar_t__ long_align ;
 int mkdata (int) ;
 struct yytbl_data* mkecstbl () ;
 int num_backing_up ;
 int num_rules ;
 int numas ;
 int numecs ;
 scalar_t__ nummt ;
 int numtemps ;
 int* nxt ;
 int out_str_dec (int ,char*,int) ;
 int putc (char,int ) ;
 scalar_t__ reject ;
 scalar_t__* rule_type ;
 int stderr ;
 scalar_t__ tablesext ;
 int tableswr ;
 int tblend ;
 int * tecbck ;
 int tmpuses ;
 scalar_t__ trace ;
 scalar_t__ useecs ;
 scalar_t__ usemecs ;
 scalar_t__ variable_trailing_context_rules ;
 int yydmap_buf ;
 int yytbl_data_compress (struct yytbl_data*) ;
 int yytbl_data_destroy (struct yytbl_data*) ;
 scalar_t__ yytbl_data_fwrite (int *,struct yytbl_data*) ;
 int yytbl_data_init (struct yytbl_data*,int ) ;

void gentabs ()
{
 int i, j, k, *accset, nacc, *acc_array, total_states;
 int end_of_buffer_action = num_rules + 1;
 struct yytbl_data *yyacc_tbl = 0, *yymeta_tbl = 0, *yybase_tbl = 0,
  *yydef_tbl = 0, *yynxt_tbl = 0, *yychk_tbl = 0, *yyacclist_tbl=0;
 flex_int32_t *yyacc_data = 0, *yybase_data = 0, *yydef_data = 0,
  *yynxt_data = 0, *yychk_data = 0, *yyacclist_data=0;
 flex_int32_t yybase_curr = 0, yyacclist_curr=0,yyacc_curr=0;

 acc_array = allocate_integer_array (current_max_dfas);
 nummt = 0;






 ++num_backing_up;

 if (reject) {






  int EOB_accepting_list[2];


  EOB_accepting_list[0] = 0;
  EOB_accepting_list[1] = end_of_buffer_action;
  accsiz[end_of_buffer_state] = 1;
  dfaacc[end_of_buffer_state].dfaacc_set =
   EOB_accepting_list;

  out_str_dec (long_align ? get_int32_decl () :
        get_int16_decl (), "yy_acclist", MAX (numas,
           1) + 1);

        buf_prints (&yydmap_buf,
                "\t{YYTD_ID_ACCLIST, (void**)&yy_acclist, sizeof(%s)},\n",
                long_align ? "flex_int32_t" : "flex_int16_t");

        yyacclist_tbl = (struct yytbl_data*)calloc(1,sizeof(struct yytbl_data));
        yytbl_data_init (yyacclist_tbl, YYTD_ID_ACCLIST);
        yyacclist_tbl->td_lolen = MAX(numas,1) + 1;
        yyacclist_tbl->td_data = yyacclist_data =
            (flex_int32_t *) calloc (yyacclist_tbl->td_lolen, sizeof (flex_int32_t));
        yyacclist_curr = 1;

  j = 1;

  for (i = 1; i <= lastdfa; ++i) {
   acc_array[i] = j;

   if (accsiz[i] != 0) {
    accset = dfaacc[i].dfaacc_set;
    nacc = accsiz[i];

    if (trace)
     fprintf (stderr,
       _("state # %d accepts: "),
       i);

    for (k = 1; k <= nacc; ++k) {
     int accnum = accset[k];

     ++j;

     if (variable_trailing_context_rules
         && !(accnum &
       YY_TRAILING_HEAD_MASK)
         && accnum > 0
         && accnum <= num_rules
         && rule_type[accnum] ==
         RULE_VARIABLE) {




      accnum |= YY_TRAILING_MASK;
     }

     mkdata (accnum);
                    yyacclist_data[yyacclist_curr++] = accnum;

     if (trace) {
      fprintf (stderr, "[%d]",
        accset[k]);

      if (k < nacc)
       fputs (", ",
              stderr);
      else
       putc ('\n',
             stderr);
     }
    }
   }
  }


  acc_array[i] = j;

  dataend ();
        if (tablesext) {
            yytbl_data_compress (yyacclist_tbl);
            if (yytbl_data_fwrite (&tableswr, yyacclist_tbl) < 0)
                flexerror (_("Could not write yyacclist_tbl"));
            yytbl_data_destroy (yyacclist_tbl);
            yyacclist_tbl = ((void*)0);
        }
 }

 else {
  dfaacc[end_of_buffer_state].dfaacc_state =
   end_of_buffer_action;

  for (i = 1; i <= lastdfa; ++i)
   acc_array[i] = dfaacc[i].dfaacc_state;


  acc_array[i] = 0;
 }
 k = lastdfa + 2;

 if (reject)





  ++k;

 out_str_dec (long_align ? get_int32_decl () : get_int16_decl (),
       "yy_accept", k);

 buf_prints (&yydmap_buf,
      "\t{YYTD_ID_ACCEPT, (void**)&yy_accept, sizeof(%s)},\n",
      long_align ? "flex_int32_t" : "flex_int16_t");

 yyacc_tbl =
  (struct yytbl_data *) calloc (1,
           sizeof (struct yytbl_data));
 yytbl_data_init (yyacc_tbl, YYTD_ID_ACCEPT);
 yyacc_tbl->td_lolen = k;
 yyacc_tbl->td_data = yyacc_data =
  (flex_int32_t *) calloc (yyacc_tbl->td_lolen, sizeof (flex_int32_t));
    yyacc_curr=1;

 for (i = 1; i <= lastdfa; ++i) {
  mkdata (acc_array[i]);
  yyacc_data[yyacc_curr++] = acc_array[i];

  if (!reject && trace && acc_array[i])
   fprintf (stderr, _("state # %d accepts: [%d]\n"),
     i, acc_array[i]);
 }


 mkdata (acc_array[i]);
 yyacc_data[yyacc_curr++] = acc_array[i];

 if (reject) {

  mkdata (acc_array[i]);
  yyacc_data[yyacc_curr++] = acc_array[i];
 }

 dataend ();
 if (tablesext) {
  yytbl_data_compress (yyacc_tbl);
  if (yytbl_data_fwrite (&tableswr, yyacc_tbl) < 0)
   flexerror (_("Could not write yyacc_tbl"));
  yytbl_data_destroy (yyacc_tbl);
  yyacc_tbl = ((void*)0);
 }


 if (useecs) {

  genecs ();
  if (tablesext) {
   struct yytbl_data *tbl;

   tbl = mkecstbl ();
   yytbl_data_compress (tbl);
   if (yytbl_data_fwrite (&tableswr, tbl) < 0)
    flexerror (_("Could not write ecstbl"));
   yytbl_data_destroy (tbl);
   tbl = 0;
  }
 }

 if (usemecs) {




  flex_int32_t *yymecs_data = 0;
  yymeta_tbl =
   (struct yytbl_data *) calloc (1,
            sizeof (struct
             yytbl_data));
  yytbl_data_init (yymeta_tbl, YYTD_ID_META);
  yymeta_tbl->td_lolen = numecs + 1;
  yymeta_tbl->td_data = yymecs_data =
   (flex_int32_t *) calloc (yymeta_tbl->td_lolen,
         sizeof (flex_int32_t));

  if (trace)
   fputs (_("\n\nMeta-Equivalence Classes:\n"),
          stderr);

  out_str_dec (get_int32_decl (), "yy_meta", numecs + 1);
  buf_prints (&yydmap_buf,
       "\t{YYTD_ID_META, (void**)&yy_meta, sizeof(%s)},\n",
       "flex_int32_t");

  for (i = 1; i <= numecs; ++i) {
   if (trace)
    fprintf (stderr, "%d = %d\n",
      i, ABS (tecbck[i]));

   mkdata (ABS (tecbck[i]));
   yymecs_data[i] = ABS (tecbck[i]);
  }

  dataend ();
  if (tablesext) {
   yytbl_data_compress (yymeta_tbl);
   if (yytbl_data_fwrite (&tableswr, yymeta_tbl) < 0)
    flexerror (_
        ("Could not write yymeta_tbl"));
   yytbl_data_destroy (yymeta_tbl);
   yymeta_tbl = ((void*)0);
  }

 }

 total_states = lastdfa + numtemps;


 out_str_dec ((tblend >= INT16_MAX || long_align) ?
       get_int32_decl () : get_int16_decl (),
       "yy_base", total_states + 1);

 buf_prints (&yydmap_buf,
      "\t{YYTD_ID_BASE, (void**)&yy_base, sizeof(%s)},\n",
      (tblend >= INT16_MAX
       || long_align) ? "flex_int32_t" : "flex_int16_t");
 yybase_tbl =
  (struct yytbl_data *) calloc (1,
           sizeof (struct yytbl_data));
 yytbl_data_init (yybase_tbl, YYTD_ID_BASE);
 yybase_tbl->td_lolen = total_states + 1;
 yybase_tbl->td_data = yybase_data =
  (flex_int32_t *) calloc (yybase_tbl->td_lolen,
        sizeof (flex_int32_t));
 yybase_curr = 1;

 for (i = 1; i <= lastdfa; ++i) {
  int d = def[i];

  if (base[i] == JAMSTATE)
   base[i] = jambase;

  if (d == JAMSTATE)
   def[i] = jamstate;

  else if (d < 0) {

   ++tmpuses;
   def[i] = lastdfa - d + 1;
  }

  mkdata (base[i]);
  yybase_data[yybase_curr++] = base[i];
 }


 mkdata (base[i]);
 yybase_data[yybase_curr++] = base[i];

 for (++i ; i <= total_states; ++i) {
  mkdata (base[i]);
  yybase_data[yybase_curr++] = base[i];
  def[i] = jamstate;
 }

 dataend ();
 if (tablesext) {
  yytbl_data_compress (yybase_tbl);
  if (yytbl_data_fwrite (&tableswr, yybase_tbl) < 0)
   flexerror (_("Could not write yybase_tbl"));
  yytbl_data_destroy (yybase_tbl);
  yybase_tbl = ((void*)0);
 }




 out_str_dec ((total_states >= INT16_MAX || long_align) ?
       get_int32_decl () : get_int16_decl (),
       "yy_def", total_states + 1);

 buf_prints (&yydmap_buf,
      "\t{YYTD_ID_DEF, (void**)&yy_def, sizeof(%s)},\n",
      (total_states >= INT16_MAX
       || long_align) ? "flex_int32_t" : "flex_int16_t");

 yydef_tbl =
  (struct yytbl_data *) calloc (1,
           sizeof (struct yytbl_data));
 yytbl_data_init (yydef_tbl, YYTD_ID_DEF);
 yydef_tbl->td_lolen = total_states + 1;
 yydef_tbl->td_data = yydef_data =
  (flex_int32_t *) calloc (yydef_tbl->td_lolen, sizeof (flex_int32_t));

 for (i = 1; i <= total_states; ++i) {
  mkdata (def[i]);
  yydef_data[i] = def[i];
 }

 dataend ();
 if (tablesext) {
  yytbl_data_compress (yydef_tbl);
  if (yytbl_data_fwrite (&tableswr, yydef_tbl) < 0)
   flexerror (_("Could not write yydef_tbl"));
  yytbl_data_destroy (yydef_tbl);
  yydef_tbl = ((void*)0);
 }




 out_str_dec ((total_states >= INT16_MAX || long_align) ?
       get_int32_decl () : get_int16_decl (), "yy_nxt",
       tblend + 1);

 buf_prints (&yydmap_buf,
      "\t{YYTD_ID_NXT, (void**)&yy_nxt, sizeof(%s)},\n",
      (total_states >= INT16_MAX
       || long_align) ? "flex_int32_t" : "flex_int16_t");

 yynxt_tbl =
  (struct yytbl_data *) calloc (1,
           sizeof (struct yytbl_data));
 yytbl_data_init (yynxt_tbl, YYTD_ID_NXT);
 yynxt_tbl->td_lolen = tblend + 1;
 yynxt_tbl->td_data = yynxt_data =
  (flex_int32_t *) calloc (yynxt_tbl->td_lolen, sizeof (flex_int32_t));

 for (i = 1; i <= tblend; ++i) {



  if (chk[i] == 0 || nxt[i] == 0)
   nxt[i] = jamstate;

  mkdata (nxt[i]);
  yynxt_data[i] = nxt[i];
 }

 dataend ();
 if (tablesext) {
  yytbl_data_compress (yynxt_tbl);
  if (yytbl_data_fwrite (&tableswr, yynxt_tbl) < 0)
   flexerror (_("Could not write yynxt_tbl"));
  yytbl_data_destroy (yynxt_tbl);
  yynxt_tbl = ((void*)0);
 }



 out_str_dec ((total_states >= INT16_MAX || long_align) ?
       get_int32_decl () : get_int16_decl (), "yy_chk",
       tblend + 1);

 buf_prints (&yydmap_buf,
      "\t{YYTD_ID_CHK, (void**)&yy_chk, sizeof(%s)},\n",
      (total_states >= INT16_MAX
       || long_align) ? "flex_int32_t" : "flex_int16_t");

 yychk_tbl =
  (struct yytbl_data *) calloc (1,
           sizeof (struct yytbl_data));
 yytbl_data_init (yychk_tbl, YYTD_ID_CHK);
 yychk_tbl->td_lolen = tblend + 1;
 yychk_tbl->td_data = yychk_data =
  (flex_int32_t *) calloc (yychk_tbl->td_lolen, sizeof (flex_int32_t));

 for (i = 1; i <= tblend; ++i) {
  if (chk[i] == 0)
   ++nummt;

  mkdata (chk[i]);
  yychk_data[i] = chk[i];
 }

 dataend ();
 if (tablesext) {
  yytbl_data_compress (yychk_tbl);
  if (yytbl_data_fwrite (&tableswr, yychk_tbl) < 0)
   flexerror (_("Could not write yychk_tbl"));
  yytbl_data_destroy (yychk_tbl);
  yychk_tbl = ((void*)0);
 }


 flex_free ((void *) acc_array);
}
