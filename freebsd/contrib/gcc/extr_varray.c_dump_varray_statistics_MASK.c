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
struct output_info {int count; int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct output_info*) ; 
 int /*<<< orphan*/  print_statistics ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  varray_hash ; 

void
FUNC2 (void)
{
#ifdef GATHER_STATISTICS
  struct output_info info;

  fprintf (stderr, "\nVARRAY Kind            Count      Bytes  Resized copied\n");
  fprintf (stderr, "-------------------------------------------------------\n");
  info.count = 0;
  info.size = 0;
  htab_traverse (varray_hash, print_statistics, &info);
  fprintf (stderr, "-------------------------------------------------------\n");
  fprintf (stderr, "%-20s %7d %10d\n",
	   "Total", info.count, info.size);
  fprintf (stderr, "-------------------------------------------------------\n");
#endif
}