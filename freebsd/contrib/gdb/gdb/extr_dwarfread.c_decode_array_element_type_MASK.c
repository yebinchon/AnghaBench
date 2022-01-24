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
struct type {int dummy; } ;
typedef  void* DIE_REF ;

/* Variables and functions */
#define  AT_fund_type 131 
#define  AT_mod_fund_type 130 
#define  AT_mod_u_d_type 129 
#define  AT_user_def_type 128 
 int /*<<< orphan*/  DIE_ID ; 
 int /*<<< orphan*/  DIE_NAME ; 
 int /*<<< orphan*/  FT_INTEGER ; 
 int /*<<< orphan*/  GET_UNSIGNED ; 
 int SIZEOF_ATTRIBUTE ; 
 struct type* FUNC0 (void*,int /*<<< orphan*/ *) ; 
 int FUNC1 (unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  current_objfile ; 
 struct type* FUNC3 (unsigned short) ; 
 struct type* FUNC4 (char*) ; 
 struct type* FUNC5 (char*) ; 
 struct type* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct type* FUNC7 (void*) ; 
 void* FUNC8 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct type *
FUNC9 (char *scan)
{
  struct type *typep;
  DIE_REF die_ref;
  unsigned short attribute;
  unsigned short fundtype;
  int nbytes;

  attribute = FUNC8 (scan, SIZEOF_ATTRIBUTE, GET_UNSIGNED,
			      current_objfile);
  scan += SIZEOF_ATTRIBUTE;
  nbytes = FUNC1 (attribute);
  if (nbytes == -1)
    {
      FUNC2 (DIE_ID, DIE_NAME, attribute);
      typep = FUNC6 (current_objfile, FT_INTEGER);
    }
  else
    {
      switch (attribute)
	{
	case AT_fund_type:
	  fundtype = FUNC8 (scan, nbytes, GET_UNSIGNED,
				     current_objfile);
	  typep = FUNC3 (fundtype);
	  break;
	case AT_mod_fund_type:
	  typep = FUNC4 (scan);
	  break;
	case AT_user_def_type:
	  die_ref = FUNC8 (scan, nbytes, GET_UNSIGNED,
				    current_objfile);
	  typep = FUNC7 (die_ref);
	  if (typep == NULL)
	    {
	      typep = FUNC0 (die_ref, NULL);
	    }
	  break;
	case AT_mod_u_d_type:
	  typep = FUNC5 (scan);
	  break;
	default:
	  FUNC2 (DIE_ID, DIE_NAME, attribute);
	  typep = FUNC6 (current_objfile, FT_INTEGER);
	  break;
	}
    }
  return (typep);
}