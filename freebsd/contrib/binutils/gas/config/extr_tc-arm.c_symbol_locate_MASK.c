#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  valueT ;
typedef  int /*<<< orphan*/  symbolS ;
typedef  int /*<<< orphan*/  segT ;
typedef  int /*<<< orphan*/  fragS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  notes ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,unsigned int) ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  symbol_lastP ; 
 int /*<<< orphan*/  symbol_rootP ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14 (symbolS *    symbolP,
	       const char * name,	/* It is copied, the caller can modify.	 */
	       segT	    segment,	/* Segment identifier (SEG_<something>).  */
	       valueT	    valu,	/* Symbol value.  */
	       fragS *	    frag)	/* Associated fragment.	 */
{
  unsigned int name_length;
  char * preserved_copy_of_name;

  name_length = FUNC7 (name) + 1;   /* +1 for \0.  */
  FUNC6 (&notes, name, name_length);
  preserved_copy_of_name = FUNC5 (&notes);

#ifdef tc_canonicalize_symbol_name
  preserved_copy_of_name =
    tc_canonicalize_symbol_name (preserved_copy_of_name);
#endif

  FUNC0 (symbolP, preserved_copy_of_name);

  FUNC1 (symbolP, segment);
  FUNC2 (symbolP, valu);
  FUNC9 (symbolP);

  FUNC10 (symbolP, frag);

  /* Link to end of symbol chain.  */
  {
    extern int symbol_table_frozen;

    if (symbol_table_frozen)
      FUNC3 ();
  }

  FUNC8 (symbolP, symbol_lastP, & symbol_rootP, & symbol_lastP);

  FUNC4 (symbolP);

#ifdef tc_symbol_new_hook
  tc_symbol_new_hook (symbolP);
#endif

#ifdef DEBUG_SYMS
  verify_symbol_chain (symbol_rootP, symbol_lastP);
#endif /* DEBUG_SYMS  */
}