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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
#define  BOOLEAN_TYPE 131 
#define  INTEGER_TYPE 130 
#define  REAL_TYPE 129 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
#define  VOID_TYPE 128 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  double_type_node ; 
 int /*<<< orphan*/  float_type_node ; 
 int /*<<< orphan*/  FUNC8 () ; 
 char* integer_type_codes ; 
 int /*<<< orphan*/ * integer_types ; 
 size_t itk_none ; 
 int /*<<< orphan*/  java_double_type_node ; 
 int /*<<< orphan*/  java_float_type_node ; 
 int /*<<< orphan*/  long_double_type_node ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,unsigned int) ; 
 scalar_t__ FUNC10 (char const*) ; 
 int /*<<< orphan*/  wchar_type_node ; 
 int /*<<< orphan*/  FUNC11 (char) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 

__attribute__((used)) static void
FUNC15 (tree type)
{
  switch (FUNC0 (type))
    {
    case VOID_TYPE:
      FUNC11 ('v');
      break;

    case BOOLEAN_TYPE:
      FUNC11 ('b');
      break;

    case INTEGER_TYPE:
      /* If this is size_t, get the underlying int type.  */
      if (FUNC3 (type))
	type = FUNC1 (type);

      /* TYPE may still be wchar_t, since that isn't in
	 integer_type_nodes.  */
      if (type == wchar_type_node)
	FUNC11 ('w');
      else if (FUNC2 (type))
	FUNC12 (type);
      else
	{
	  size_t itk;
	  /* Assume TYPE is one of the shared integer type nodes.  Find
	     it in the array of these nodes.  */
	iagain:
	  for (itk = 0; itk < itk_none; ++itk)
	    if (type == integer_types[itk])
	      {
		/* Print the corresponding single-letter code.  */
		FUNC11 (integer_type_codes[itk]);
		break;
	      }

	  if (itk == itk_none)
	    {
	      tree t = FUNC7 (FUNC4 (type),
					       FUNC6 (type));
	      if (type != t)
		{
		  type = t;
		  goto iagain;
		}

	      if (FUNC5 (type) == 128)
		FUNC11 (FUNC6 (type) ? 'o' : 'n');
	      else
		{
		  /* Allow for cases where TYPE is not one of the shared
		     integer type nodes and write a "vendor extended builtin
		     type" with a name the form intN or uintN, respectively.
		     Situations like this can happen if you have an
		     __attribute__((__mode__(__SI__))) type and use exotic
		     switches like '-mint8' on AVR.  Of course, this is
		     undefined by the C++ ABI (and '-mint8' is not even
		     Standard C conforming), but when using such special
		     options you're pretty much in nowhere land anyway.  */
		  const char *prefix;
		  char prec[11];	/* up to ten digits for an unsigned */

		  prefix = FUNC6 (type) ? "uint" : "int";
		  FUNC9 (prec, "%u", (unsigned) FUNC5 (type));
		  FUNC11 ('u');	/* "vendor extended builtin type" */
		  FUNC14 (FUNC10 (prefix) + FUNC10 (prec));
		  FUNC13 (prefix);
		  FUNC13 (prec);
		}
	    }
	}
      break;

    case REAL_TYPE:
      if (type == float_type_node
	  || type == java_float_type_node)
	FUNC11 ('f');
      else if (type == double_type_node
	       || type == java_double_type_node)
	FUNC11 ('d');
      else if (type == long_double_type_node)
	FUNC11 ('e');
      else
	FUNC8 ();
      break;

    default:
      FUNC8 ();
    }
}