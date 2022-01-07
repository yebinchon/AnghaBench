
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct yytbl_data {int td_hilen; int td_lolen; int* td_data; } ;
typedef int flex_int32_t ;
struct TYPE_2__ {scalar_t__ dfaacc_state; } ;


 int CSIZE ;
 int JAMSTATE ;
 int NIL ;
 size_t NUL_ec ;
 int YYTD_ID_NXT ;
 char* _ (char*) ;
 void* allocate_integer_array (int) ;
 int bldtbl (int*,int,int,int,int) ;
 int buf_prints (int *,char*,char*) ;
 scalar_t__ calloc (int,int) ;
 int check_for_backing_up (int,int*) ;
 int check_trailing_context (int*,int,int*,int) ;
 int cmptmps () ;
 int csize ;
 int current_max_dfa_size ;
 int current_max_dfas ;
 int dataend () ;
 int dataflush () ;
 TYPE_1__* dfaacc ;
 int* dfasiz ;
 int** dss ;
 int dumpnfa (int) ;
 int* ecgroup ;
 int end_of_buffer_state ;
 int* epsclosure (int*,int*,int*,int*,int*) ;
 int flex_free (void*) ;
 int flexerror (char*) ;
 int flexfatal (char*) ;
 int fprintf (int ,char*,int,...) ;
 int fputs (char*,int ) ;
 scalar_t__ fullspd ;
 scalar_t__ fulltbl ;
 scalar_t__ gentables ;
 int inittbl () ;
 int lastsc ;
 scalar_t__ long_align ;
 int mk1tbl (int ,int ,int ,int ) ;
 int mk2data (int) ;
 int mkbranch (int ,int) ;
 int mkdeftbl () ;
 int* nultrans ;
 int num_rules ;
 scalar_t__ numas ;
 int numdup ;
 int numecs ;
 int numsnpairs ;
 int numuniq ;
 int * onedef ;
 int * onenext ;
 size_t onesp ;
 int * onestate ;
 int * onesym ;
 int out_dec (char*,int) ;
 int out_str (char*,char*) ;
 int out_str_dec (char*,char*,int) ;
 int outn (char*) ;
 int place_state (int*,int,int) ;
 scalar_t__ realloc (int*,int) ;
 int * scbol ;
 int* scset ;
 scalar_t__ snstods (int*,int,int*,int,int,int*) ;
 int stack1 (int,int ,int ,int ) ;
 int stderr ;
 int symfollowset (int*,int,int,int*) ;
 int sympartition (int*,int,int*,int*) ;
 scalar_t__ tablesext ;
 int tableswr ;
 scalar_t__ totnst ;
 scalar_t__ trace ;
 scalar_t__ variable_trailing_context_rules ;
 int yydmap_buf ;
 int yytbl_data_compress (struct yytbl_data*) ;
 int yytbl_data_destroy (struct yytbl_data*) ;
 scalar_t__ yytbl_data_fwrite (int *,struct yytbl_data*) ;
 int yytbl_data_init (struct yytbl_data*,int ) ;

void ntod ()
{
 int *accset, ds, nacc, newds;
 int sym, hashval, numstates, dsize;
 int num_full_table_rows=0;
 int *nset, *dset;
 int targptr, totaltrans, i, comstate, comfreq, targ;
 int symlist[CSIZE + 1];
 int num_start_states;
 int todo_head, todo_next;

 struct yytbl_data *yynxt_tbl = 0;
 flex_int32_t *yynxt_data = 0, yynxt_curr = 0;
 int duplist[CSIZE + 1], state[CSIZE + 1];
 int targfreq[CSIZE + 1], targstate[CSIZE + 1];




 accset = allocate_integer_array ((num_rules + 1) * 2);
 nset = allocate_integer_array (current_max_dfa_size);







 todo_head = todo_next = 0;

 for (i = 0; i <= csize; ++i) {
  duplist[i] = NIL;
  symlist[i] = 0;
 }

 for (i = 0; i <= num_rules; ++i)
  accset[i] = NIL;

 if (trace) {
  dumpnfa (scset[1]);
  fputs (_("\n\nDFA Dump:\n\n"), stderr);
 }

 inittbl ();
 if (!fullspd && ecgroup[0] == numecs) {



  int use_NUL_table = (numecs == csize);

  if (fulltbl && !use_NUL_table) {



   int power_of_two;

   for (power_of_two = 1; power_of_two <= csize;
        power_of_two *= 2)
    if (numecs == power_of_two) {
     use_NUL_table = 1;
     break;
    }
  }

  if (use_NUL_table)
   nultrans =
    allocate_integer_array (current_max_dfas);




 }


 if (fullspd) {
  for (i = 0; i <= numecs; ++i)
   state[i] = 0;

  place_state (state, 0, 0);
  dfaacc[0].dfaacc_state = 0;
 }

 else if (fulltbl) {
  if (nultrans)



   num_full_table_rows = numecs;

  else




   num_full_table_rows = numecs + 1;







  yynxt_tbl =
   (struct yytbl_data *) calloc (1,
            sizeof (struct
             yytbl_data));
  yytbl_data_init (yynxt_tbl, YYTD_ID_NXT);
  yynxt_tbl->td_hilen = 1;
  yynxt_tbl->td_lolen = num_full_table_rows;
  yynxt_tbl->td_data = yynxt_data =
   (flex_int32_t *) calloc (yynxt_tbl->td_lolen *
         yynxt_tbl->td_hilen,
         sizeof (flex_int32_t));
  yynxt_curr = 0;

  buf_prints (&yydmap_buf,
       "\t{YYTD_ID_NXT, (void**)&yy_nxt, sizeof(%s)},\n",
       long_align ? "flex_int32_t" : "flex_int16_t");




  if (gentables)
   out_str_dec
    ("static yyconst %s yy_nxt[][%d] =\n    {\n",
     long_align ? "flex_int32_t" : "flex_int16_t",
     num_full_table_rows);
  else {
   out_dec ("#undef YY_NXT_LOLEN\n#define YY_NXT_LOLEN (%d)\n", num_full_table_rows);
   out_str ("static yyconst %s *yy_nxt =0;\n",
     long_align ? "flex_int32_t" : "flex_int16_t");
  }


  if (gentables)
   outn ("    {");


  for (i = 0; i < num_full_table_rows; ++i) {
   mk2data (0);
   yynxt_data[yynxt_curr++] = 0;
  }

  dataflush ();
  if (gentables)
   outn ("    },\n");
 }



 num_start_states = lastsc * 2;

 for (i = 1; i <= num_start_states; ++i) {
  numstates = 1;





  if (i % 2 == 1)
   nset[numstates] = scset[(i / 2) + 1];
  else
   nset[numstates] =
    mkbranch (scbol[i / 2], scset[i / 2]);

  nset = epsclosure (nset, &numstates, accset, &nacc,
       &hashval);

  if (snstods (nset, numstates, accset, nacc, hashval, &ds)) {
   numas += nacc;
   totnst += numstates;
   ++todo_next;

   if (variable_trailing_context_rules && nacc > 0)
    check_trailing_context (nset, numstates,
       accset, nacc);
  }
 }

 if (!fullspd) {
  if (!snstods (nset, 0, accset, 0, 0, &end_of_buffer_state))
   flexfatal (_
       ("could not create unique end-of-buffer state"));

  ++numas;
  ++num_start_states;
  ++todo_next;
 }


 while (todo_head < todo_next) {
  targptr = 0;
  totaltrans = 0;

  for (i = 1; i <= numecs; ++i)
   state[i] = 0;

  ds = ++todo_head;

  dset = dss[ds];
  dsize = dfasiz[ds];

  if (trace)
   fprintf (stderr, _("state # %d:\n"), ds);

  sympartition (dset, dsize, symlist, duplist);

  for (sym = 1; sym <= numecs; ++sym) {
   if (symlist[sym]) {
    symlist[sym] = 0;

    if (duplist[sym] == NIL) {

     numstates =
      symfollowset (dset, dsize,
             sym, nset);
     nset = epsclosure (nset,
          &numstates,
          accset, &nacc,
          &hashval);

     if (snstods
         (nset, numstates, accset, nacc,
          hashval, &newds)) {
      totnst = totnst +
       numstates;
      ++todo_next;
      numas += nacc;

      if (variable_trailing_context_rules && nacc > 0)
       check_trailing_context
        (nset,
         numstates,
         accset,
         nacc);
     }

     state[sym] = newds;

     if (trace)
      fprintf (stderr,
        "\t%d\t%d\n", sym,
        newds);

     targfreq[++targptr] = 1;
     targstate[targptr] = newds;
     ++numuniq;
    }

    else {




     targ = state[duplist[sym]];
     state[sym] = targ;

     if (trace)
      fprintf (stderr,
        "\t%d\t%d\n", sym,
        targ);





     i = 0;
     while (targstate[++i] != targ) ;

     ++targfreq[i];
     ++numdup;
    }

    ++totaltrans;
    duplist[sym] = NIL;
   }
  }


  numsnpairs += totaltrans;

  if (ds > num_start_states)
   check_for_backing_up (ds, state);

  if (nultrans) {
   nultrans[ds] = state[NUL_ec];
   state[NUL_ec] = 0;
  }

  if (fulltbl) {


   yynxt_tbl->td_hilen++;
   yynxt_tbl->td_data = yynxt_data =
    (flex_int32_t *) realloc (yynxt_data,
           yynxt_tbl->td_hilen *
           yynxt_tbl->td_lolen *
           sizeof (flex_int32_t));


   if (gentables)
    outn ("    {");


   if (ds == end_of_buffer_state) {
    mk2data (-end_of_buffer_state);
    yynxt_data[yynxt_curr++] =
     -end_of_buffer_state;
   }
   else {
    mk2data (end_of_buffer_state);
    yynxt_data[yynxt_curr++] =
     end_of_buffer_state;
   }

   for (i = 1; i < num_full_table_rows; ++i) {



    mk2data (state[i] ? state[i] : -ds);
    yynxt_data[yynxt_curr++] =
     state[i] ? state[i] : -ds;
   }

   dataflush ();
   if (gentables)
    outn ("    },\n");
  }

  else if (fullspd)
   place_state (state, ds, totaltrans);

  else if (ds == end_of_buffer_state)



   stack1 (ds, 0, 0, JAMSTATE);

  else {





   comfreq = 0;
   comstate = 0;

   for (i = 1; i <= targptr; ++i)
    if (targfreq[i] > comfreq) {
     comfreq = targfreq[i];
     comstate = targstate[i];
    }

   bldtbl (state, ds, totaltrans, comstate, comfreq);
  }
 }

 if (fulltbl) {
  dataend ();
  if (tablesext) {
   yytbl_data_compress (yynxt_tbl);
   if (yytbl_data_fwrite (&tableswr, yynxt_tbl) < 0)
    flexerror (_
        ("Could not write yynxt_tbl[][]"));
  }
  if (yynxt_tbl) {
   yytbl_data_destroy (yynxt_tbl);
   yynxt_tbl = 0;
  }
 }

 else if (!fullspd) {
  cmptmps ();




  while (onesp > 0) {
   mk1tbl (onestate[onesp], onesym[onesp],
    onenext[onesp], onedef[onesp]);
   --onesp;
  }

  mkdeftbl ();
 }

 flex_free ((void *) accset);
 flex_free ((void *) nset);
}
