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
struct data_reference {int dummy; } ;
typedef  int /*<<< orphan*/  stmt_vec_info ;

/* Variables and functions */
 struct data_reference* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct data_reference*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (tree stmt)
{
  stmt_vec_info stmt_info = FUNC3 (stmt);
  struct data_reference *dr = FUNC0 (stmt_info);

  /* FORNOW: can't handle misaligned accesses; 
             all accesses expected to be aligned.  */
  FUNC2 (FUNC1 (dr));
}