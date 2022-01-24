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
struct omp_for_data {scalar_t__ chunk_size; scalar_t__ step; scalar_t__ n2; scalar_t__ n1; } ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 scalar_t__ OMP_FOR ; 
 scalar_t__ OMP_SECTIONS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct omp_for_data*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC5 (basic_block par_entry_bb, basic_block ws_entry_bb)
{
  struct omp_for_data fd;
  tree par_stmt, ws_stmt;

  par_stmt = FUNC4 (par_entry_bb);
  ws_stmt = FUNC4 (ws_entry_bb);

  if (FUNC0 (ws_stmt) == OMP_SECTIONS)
    return true;

  FUNC2 (FUNC0 (ws_stmt) == OMP_FOR);

  FUNC1 (ws_stmt, &fd);

  /* FIXME.  We give up too easily here.  If any of these arguments
     are not constants, they will likely involve variables that have
     been mapped into fields of .omp_data_s for sharing with the child
     function.  With appropriate data flow, it would be possible to
     see through this.  */
  if (!FUNC3 (fd.n1)
      || !FUNC3 (fd.n2)
      || !FUNC3 (fd.step)
      || (fd.chunk_size && !FUNC3 (fd.chunk_size)))
    return false;

  return true;
}