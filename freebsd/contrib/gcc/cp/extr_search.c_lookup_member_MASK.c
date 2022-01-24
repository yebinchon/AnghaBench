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
typedef  char* tree ;
struct lookup_field_info {char* type; char* name; int want_type; char* rval; char* rval_binfo; char* errstr; char* ambiguous; } ;
typedef  int /*<<< orphan*/  lfi ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ IDENTIFIER_NODE ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 char* NULL_TREE ; 
 scalar_t__ TREE_BINFO ; 
 scalar_t__ FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 
 char* FUNC6 (char*) ; 
 char* FUNC7 (char*,char*,char*,char*) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct lookup_field_info*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char*,char*) ; 
 char* error_mark_node ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (char*) ; 
 int /*<<< orphan*/  lookup_field_r ; 
 int /*<<< orphan*/  FUNC13 (struct lookup_field_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  n_calls_lookup_field ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

tree
FUNC17 (tree xbasetype, tree name, int protect, bool want_type)
{
  tree rval, rval_binfo = NULL_TREE;
  tree type = NULL_TREE, basetype_path = NULL_TREE;
  struct lookup_field_info lfi;

  /* rval_binfo is the binfo associated with the found member, note,
     this can be set with useful information, even when rval is not
     set, because it must deal with ALL members, not just non-function
     members.  It is used for ambiguity checking and the hidden
     checks.  Whereas rval is only set if a proper (not hidden)
     non-function member is found.  */

  const char *errstr = 0;

  FUNC11 (FUNC4 (name) == IDENTIFIER_NODE);

  if (FUNC4 (xbasetype) == TREE_BINFO)
    {
      type = FUNC0 (xbasetype);
      basetype_path = xbasetype;
    }
  else
    {
      if (!FUNC3 (FUNC4 (xbasetype)))
	return NULL_TREE;
      type = xbasetype;
      xbasetype = NULL_TREE;
    }

  type = FUNC8 (type);
  if (!basetype_path)
    basetype_path = FUNC6 (type);

  if (!basetype_path)
    return NULL_TREE;

#ifdef GATHER_STATISTICS
  n_calls_lookup_field++;
#endif /* GATHER_STATISTICS */

  FUNC13 (&lfi, 0, sizeof (lfi));
  lfi.type = type;
  lfi.name = name;
  lfi.want_type = want_type;
  FUNC9 (basetype_path, &lookup_field_r, NULL, &lfi);
  rval = lfi.rval;
  rval_binfo = lfi.rval_binfo;
  if (rval_binfo)
    type = FUNC0 (rval_binfo);
  errstr = lfi.errstr;

  /* If we are not interested in ambiguities, don't report them;
     just return NULL_TREE.  */
  if (!protect && lfi.ambiguous)
    return NULL_TREE;

  if (protect == 2)
    {
      if (lfi.ambiguous)
	return lfi.ambiguous;
      else
	protect = 0;
    }

  /* [class.access]

     In the case of overloaded function names, access control is
     applied to the function selected by overloaded resolution.  

     We cannot check here, even if RVAL is only a single non-static
     member function, since we do not know what the "this" pointer
     will be.  For:

        class A { protected: void f(); };
        class B : public A { 
          void g(A *p) {
            f(); // OK
            p->f(); // Not OK.
          }
        };

    only the first call to "f" is valid.  However, if the function is
    static, we can check.  */
  if (rval && protect 
      && !FUNC16 (rval)
      && !(FUNC4 (rval) == FUNCTION_DECL
	   && FUNC1 (rval)))
    FUNC14 (basetype_path, rval, rval);

  if (errstr && protect)
    {
      FUNC10 (errstr, name, type);
      if (lfi.ambiguous)
	FUNC15 (lfi.ambiguous);
      rval = error_mark_node;
    }

  if (rval && FUNC12 (rval))
    rval = FUNC7 (rval_binfo, basetype_path, rval,
			   (FUNC2 (name)
			   ? FUNC5 (name): NULL_TREE));
  return rval;
}