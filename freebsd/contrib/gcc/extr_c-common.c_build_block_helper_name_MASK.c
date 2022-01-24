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
typedef  scalar_t__ tree ;
struct TYPE_2__ {int unqiue_block_number; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_1__* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNCTION_DECL ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ current_function_decl ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,...) ; 

tree
FUNC9 (int unique_count)
{
  char *buf;
  if (!current_function_decl)
    {
      /* APPLE LOCAL begin radar 6411649 */
      static int global_count;
      buf = (char *)FUNC6 (32);
      FUNC8 (buf, "__block_global_%d", ++global_count);
      /* APPLE LOCAL end radar 6411649 */
    }
  else
    {
      tree outer_decl = current_function_decl;
      /* APPLE LOCAL begin radar 6169580 */
      while (outer_decl &&
	      FUNC0 (outer_decl) && FUNC5 (FUNC0 (outer_decl)) == FUNCTION_DECL)
      /* APPLE LOCAL end radar 6169580 */
	 outer_decl = FUNC0 (outer_decl);
      /* APPLE LOCAL begin radar 6411649 */
      if (!unique_count)
	 unique_count = ++FUNC2(outer_decl)->unqiue_block_number;
      /* APPLE LOCAL end radar 6411649 */
      buf = (char *)FUNC6 (FUNC3 (FUNC1 (outer_decl)) + 32); 
      FUNC8 (buf, "__%s_block_invoke_%d", 
	       FUNC4 (FUNC1 (outer_decl)), unique_count);
    }
   return FUNC7 (buf); 
}