#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct yytbl_data {int td_hilen; int td_lolen; int* td_data; } ;
typedef  int flex_int32_t ;
struct TYPE_2__ {scalar_t__ dfaacc_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSIZE ; 
 int /*<<< orphan*/  JAMSTATE ; 
 int NIL ; 
 size_t NUL_ec ; 
 int /*<<< orphan*/  YYTD_ID_NXT ; 
 char* FUNC0 (char*) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int csize ; 
 int current_max_dfa_size ; 
 int current_max_dfas ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 TYPE_1__* dfaacc ; 
 int* dfasiz ; 
 int** dss ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int* ecgroup ; 
 int end_of_buffer_state ; 
 int* FUNC11 (int*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ fullspd ; 
 scalar_t__ fulltbl ; 
 scalar_t__ gentables ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int lastsc ; 
 scalar_t__ long_align ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int FUNC20 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int* nultrans ; 
 int num_rules ; 
 scalar_t__ numas ; 
 int /*<<< orphan*/  numdup ; 
 int numecs ; 
 int numsnpairs ; 
 int /*<<< orphan*/  numuniq ; 
 int /*<<< orphan*/ * onedef ; 
 int /*<<< orphan*/ * onenext ; 
 size_t onesp ; 
 int /*<<< orphan*/ * onestate ; 
 int /*<<< orphan*/ * onesym ; 
 int /*<<< orphan*/  FUNC22 (char*,int) ; 
 int /*<<< orphan*/  FUNC23 (char*,char*) ; 
 int /*<<< orphan*/  FUNC24 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 int /*<<< orphan*/  FUNC26 (int*,int,int) ; 
 scalar_t__ FUNC27 (int*,int) ; 
 int /*<<< orphan*/ * scbol ; 
 int* scset ; 
 scalar_t__ FUNC28 (int*,int,int*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC29 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC30 (int*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC31 (int*,int,int*,int*) ; 
 scalar_t__ tablesext ; 
 int /*<<< orphan*/  tableswr ; 
 scalar_t__ totnst ; 
 scalar_t__ trace ; 
 scalar_t__ variable_trailing_context_rules ; 
 int /*<<< orphan*/  yydmap_buf ; 
 int /*<<< orphan*/  FUNC32 (struct yytbl_data*) ; 
 int /*<<< orphan*/  FUNC33 (struct yytbl_data*) ; 
 scalar_t__ FUNC34 (int /*<<< orphan*/ *,struct yytbl_data*) ; 
 int /*<<< orphan*/  FUNC35 (struct yytbl_data*,int /*<<< orphan*/ ) ; 

void FUNC36 ()
{
	int    *accset, ds, nacc, newds;
	int     sym, hashval, numstates, dsize;
	int     num_full_table_rows=0;	/* used only for -f */
	int    *nset, *dset;
	int     targptr, totaltrans, i, comstate, comfreq, targ;
	int     symlist[CSIZE + 1];
	int     num_start_states;
	int     todo_head, todo_next;

	struct yytbl_data *yynxt_tbl = 0;
	flex_int32_t *yynxt_data = 0, yynxt_curr = 0;

	/* Note that the following are indexed by *equivalence classes*
	 * and not by characters.  Since equivalence classes are indexed
	 * beginning with 1, even if the scanner accepts NUL's, this
	 * means that (since every character is potentially in its own
	 * equivalence class) these arrays must have room for indices
	 * from 1 to CSIZE, so their size must be CSIZE + 1.
	 */
	int     duplist[CSIZE + 1], state[CSIZE + 1];
	int     targfreq[CSIZE + 1], targstate[CSIZE + 1];

	/* accset needs to be large enough to hold all of the rules present
	 * in the input, *plus* their YY_TRAILING_HEAD_MASK variants.
	 */
	accset = FUNC1 ((num_rules + 1) * 2);
	nset = FUNC1 (current_max_dfa_size);

	/* The "todo" queue is represented by the head, which is the DFA
	 * state currently being processed, and the "next", which is the
	 * next DFA state number available (not in use).  We depend on the
	 * fact that snstods() returns DFA's \in increasing order/, and thus
	 * need only know the bounds of the dfas to be processed.
	 */
	todo_head = todo_next = 0;

	for (i = 0; i <= csize; ++i) {
		duplist[i] = NIL;
		symlist[i] = false;
	}

	for (i = 0; i <= num_rules; ++i)
		accset[i] = NIL;

	if (trace) {
		FUNC10 (scset[1]);
		FUNC16 (FUNC0("\n\nDFA Dump:\n\n"), stderr);
	}

	FUNC17 ();

	/* Check to see whether we should build a separate table for
	 * transitions on NUL characters.  We don't do this for full-speed
	 * (-F) scanners, since for them we don't have a simple state
	 * number lying around with which to index the table.  We also
	 * don't bother doing it for scanners unless (1) NUL is in its own
	 * equivalence class (indicated by a positive value of
	 * ecgroup[NUL]), (2) NUL's equivalence class is the last
	 * equivalence class, and (3) the number of equivalence classes is
	 * the same as the number of characters.  This latter case comes
	 * about when useecs is false or when it's true but every character
	 * still manages to land in its own class (unlikely, but it's
	 * cheap to check for).  If all these things are true then the
	 * character code needed to represent NUL's equivalence class for
	 * indexing the tables is going to take one more bit than the
	 * number of characters, and therefore we won't be assured of
	 * being able to fit it into a YY_CHAR variable.  This rules out
	 * storing the transitions in a compressed table, since the code
	 * for interpreting them uses a YY_CHAR variable (perhaps it
	 * should just use an integer, though; this is worth pondering ...
	 * ###).
	 *
	 * Finally, for full tables, we want the number of entries in the
	 * table to be a power of two so the array references go fast (it
	 * will just take a shift to compute the major index).  If
	 * encoding NUL's transitions in the table will spoil this, we
	 * give it its own table (note that this will be the case if we're
	 * not using equivalence classes).
	 */

	/* Note that the test for ecgroup[0] == numecs below accomplishes
	 * both (1) and (2) above
	 */
	if (!fullspd && ecgroup[0] == numecs) {
		/* NUL is alone in its equivalence class, which is the
		 * last one.
		 */
		int     use_NUL_table = (numecs == csize);

		if (fulltbl && !use_NUL_table) {
			/* We still may want to use the table if numecs
			 * is a power of 2.
			 */
			int     power_of_two;

			for (power_of_two = 1; power_of_two <= csize;
			     power_of_two *= 2)
				if (numecs == power_of_two) {
					use_NUL_table = true;
					break;
				}
		}

		if (use_NUL_table)
			nultrans =
				FUNC1 (current_max_dfas);

		/* From now on, nultrans != nil indicates that we're
		 * saving null transitions for later, separate encoding.
		 */
	}


	if (fullspd) {
		for (i = 0; i <= numecs; ++i)
			state[i] = 0;

		FUNC26 (state, 0, 0);
		dfaacc[0].dfaacc_state = 0;
	}

	else if (fulltbl) {
		if (nultrans)
			/* We won't be including NUL's transitions in the
			 * table, so build it for entries from 0 .. numecs - 1.
			 */
			num_full_table_rows = numecs;

		else
			/* Take into account the fact that we'll be including
			 * the NUL entries in the transition table.  Build it
			 * from 0 .. numecs.
			 */
			num_full_table_rows = numecs + 1;

		/* Begin generating yy_nxt[][]
		 * This spans the entire LONG function.
		 * This table is tricky because we don't know how big it will be.
		 * So we'll have to realloc() on the way...
		 * we'll wait until we can calculate yynxt_tbl->td_hilen.
		 */
		yynxt_tbl =
			(struct yytbl_data *) FUNC4 (1,
						      sizeof (struct
							      yytbl_data));
		FUNC35 (yynxt_tbl, YYTD_ID_NXT);
		yynxt_tbl->td_hilen = 1;
		yynxt_tbl->td_lolen = num_full_table_rows;
		yynxt_tbl->td_data = yynxt_data =
			(flex_int32_t *) FUNC4 (yynxt_tbl->td_lolen *
					    yynxt_tbl->td_hilen,
					    sizeof (flex_int32_t));
		yynxt_curr = 0;

		FUNC3 (&yydmap_buf,
			    "\t{YYTD_ID_NXT, (void**)&yy_nxt, sizeof(%s)},\n",
			    long_align ? "flex_int32_t" : "flex_int16_t");

		/* Unless -Ca, declare it "short" because it's a real
		 * long-shot that that won't be large enough.
		 */
		if (gentables)
			FUNC24
				("static yyconst %s yy_nxt[][%d] =\n    {\n",
				 long_align ? "flex_int32_t" : "flex_int16_t",
				 num_full_table_rows);
		else {
			FUNC22 ("#undef YY_NXT_LOLEN\n#define YY_NXT_LOLEN (%d)\n", num_full_table_rows);
			FUNC23 ("static yyconst %s *yy_nxt =0;\n",
				 long_align ? "flex_int32_t" : "flex_int16_t");
		}


		if (gentables)
			FUNC25 ("    {");

		/* Generate 0 entries for state #0. */
		for (i = 0; i < num_full_table_rows; ++i) {
			FUNC19 (0);
			yynxt_data[yynxt_curr++] = 0;
		}

		FUNC9 ();
		if (gentables)
			FUNC25 ("    },\n");
	}

	/* Create the first states. */

	num_start_states = lastsc * 2;

	for (i = 1; i <= num_start_states; ++i) {
		numstates = 1;

		/* For each start condition, make one state for the case when
		 * we're at the beginning of the line (the '^' operator) and
		 * one for the case when we're not.
		 */
		if (i % 2 == 1)
			nset[numstates] = scset[(i / 2) + 1];
		else
			nset[numstates] =
				FUNC20 (scbol[i / 2], scset[i / 2]);

		nset = FUNC11 (nset, &numstates, accset, &nacc,
				   &hashval);

		if (FUNC28 (nset, numstates, accset, nacc, hashval, &ds)) {
			numas += nacc;
			totnst += numstates;
			++todo_next;

			if (variable_trailing_context_rules && nacc > 0)
				FUNC6 (nset, numstates,
							accset, nacc);
		}
	}

	if (!fullspd) {
		if (!FUNC28 (nset, 0, accset, 0, 0, &end_of_buffer_state))
			FUNC14 (FUNC0
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
			FUNC15 (stderr, FUNC0("state # %d:\n"), ds);

		FUNC31 (dset, dsize, symlist, duplist);

		for (sym = 1; sym <= numecs; ++sym) {
			if (symlist[sym]) {
				symlist[sym] = 0;

				if (duplist[sym] == NIL) {
					/* Symbol has unique out-transitions. */
					numstates =
						FUNC30 (dset, dsize,
							      sym, nset);
					nset = FUNC11 (nset,
							   &numstates,
							   accset, &nacc,
							   &hashval);

					if (FUNC28
					    (nset, numstates, accset, nacc,
					     hashval, &newds)) {
						totnst = totnst +
							numstates;
						++todo_next;
						numas += nacc;

						if (variable_trailing_context_rules && nacc > 0)
							FUNC6
								(nset,
								 numstates,
								 accset,
								 nacc);
					}

					state[sym] = newds;

					if (trace)
						FUNC15 (stderr,
							 "\t%d\t%d\n", sym,
							 newds);

					targfreq[++targptr] = 1;
					targstate[targptr] = newds;
					++numuniq;
				}

				else {
					/* sym's equivalence class has the same
					 * transitions as duplist(sym)'s
					 * equivalence class.
					 */
					targ = state[duplist[sym]];
					state[sym] = targ;

					if (trace)
						FUNC15 (stderr,
							 "\t%d\t%d\n", sym,
							 targ);

					/* Update frequency count for
					 * destination state.
					 */

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
			FUNC5 (ds, state);

		if (nultrans) {
			nultrans[ds] = state[NUL_ec];
			state[NUL_ec] = 0;	/* remove transition */
		}

		if (fulltbl) {

			/* Each time we hit here, it's another td_hilen, so we realloc. */
			yynxt_tbl->td_hilen++;
			yynxt_tbl->td_data = yynxt_data =
				(flex_int32_t *) FUNC27 (yynxt_data,
						     yynxt_tbl->td_hilen *
						     yynxt_tbl->td_lolen *
						     sizeof (flex_int32_t));


			if (gentables)
				FUNC25 ("    {");

			/* Supply array's 0-element. */
			if (ds == end_of_buffer_state) {
				FUNC19 (-end_of_buffer_state);
				yynxt_data[yynxt_curr++] =
					-end_of_buffer_state;
			}
			else {
				FUNC19 (end_of_buffer_state);
				yynxt_data[yynxt_curr++] =
					end_of_buffer_state;
			}

			for (i = 1; i < num_full_table_rows; ++i) {
				/* Jams are marked by negative of state
				 * number.
				 */
				FUNC19 (state[i] ? state[i] : -ds);
				yynxt_data[yynxt_curr++] =
					state[i] ? state[i] : -ds;
			}

			FUNC9 ();
			if (gentables)
				FUNC25 ("    },\n");
		}

		else if (fullspd)
			FUNC26 (state, ds, totaltrans);

		else if (ds == end_of_buffer_state)
			/* Special case this state to make sure it does what
			 * it's supposed to, i.e., jam on end-of-buffer.
			 */
			FUNC29 (ds, 0, 0, JAMSTATE);

		else {		/* normal, compressed state */

			/* Determine which destination state is the most
			 * common, and how many transitions to it there are.
			 */

			comfreq = 0;
			comstate = 0;

			for (i = 1; i <= targptr; ++i)
				if (targfreq[i] > comfreq) {
					comfreq = targfreq[i];
					comstate = targstate[i];
				}

			FUNC2 (state, ds, totaltrans, comstate, comfreq);
		}
	}

	if (fulltbl) {
		FUNC8 ();
		if (tablesext) {
			FUNC32 (yynxt_tbl);
			if (FUNC34 (&tableswr, yynxt_tbl) < 0)
				FUNC13 (FUNC0
					   ("Could not write yynxt_tbl[][]"));
		}
		if (yynxt_tbl) {
			FUNC33 (yynxt_tbl);
			yynxt_tbl = 0;
		}
	}

	else if (!fullspd) {
		FUNC7 ();	/* create compressed template entries */

		/* Create tables for all the states with only one
		 * out-transition.
		 */
		while (onesp > 0) {
			FUNC18 (onestate[onesp], onesym[onesp],
				onenext[onesp], onedef[onesp]);
			--onesp;
		}

		FUNC21 ();
	}

	FUNC12 ((void *) accset);
	FUNC12 ((void *) nset);
}