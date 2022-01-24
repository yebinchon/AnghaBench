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
struct TYPE_2__ {int /*<<< orphan*/ * substitutions; } ;

/* Variables and functions */
 TYPE_1__ G ; 
 size_t SUBID_ALLOCATOR ; 
 size_t SUBID_BASIC_IOSTREAM ; 
 size_t SUBID_BASIC_ISTREAM ; 
 size_t SUBID_BASIC_OSTREAM ; 
 size_t SUBID_BASIC_STRING ; 
 size_t SUBID_CHAR_TRAITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  name_base ; 
 int /*<<< orphan*/  name_obstack ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * subst_identifiers ; 

void
FUNC3 (void)
{
  FUNC0 (&name_obstack);
  name_base = FUNC2 (&name_obstack, 0);
  G.substitutions = NULL;

  /* Cache these identifiers for quick comparison when checking for
     standard substitutions.  */
  subst_identifiers[SUBID_ALLOCATOR] = FUNC1 ("allocator");
  subst_identifiers[SUBID_BASIC_STRING] = FUNC1 ("basic_string");
  subst_identifiers[SUBID_CHAR_TRAITS] = FUNC1 ("char_traits");
  subst_identifiers[SUBID_BASIC_ISTREAM] = FUNC1 ("basic_istream");
  subst_identifiers[SUBID_BASIC_OSTREAM] = FUNC1 ("basic_ostream");
  subst_identifiers[SUBID_BASIC_IOSTREAM] = FUNC1 ("basic_iostream");
}