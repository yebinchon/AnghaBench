#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ hashnode ;
struct TYPE_3__ {int nslots; size_t nelements; scalar_t__ searches; scalar_t__ collisions; int /*<<< orphan*/  stack; scalar_t__* entries; } ;
typedef  TYPE_1__ hash_table ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 double FUNC3 (double) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned long,...) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC6 (hash_table *table)
{
  size_t nelts, nids, overhead, headers;
  size_t total_bytes, longest;
  double sum_of_squares, exp_len, exp_len2, exp2_len;
  hashnode *p, *limit;

#define SCALE(x) ((unsigned long) ((x) < 1024*10 \
		  ? (x) \
		  : ((x) < 1024*1024*10 \
		     ? (x) / 1024 \
		     : (x) / (1024*1024))))
#define LABEL(x) ((x) < 1024*10 ? ' ' : ((x) < 1024*1024*10 ? 'k' : 'M'))

  total_bytes = longest = sum_of_squares = nids = 0;
  p = table->entries;
  limit = p + table->nslots;
  do
    if (*p)
      {
	size_t n = FUNC0 (*p);

	total_bytes += n;
	sum_of_squares += (double) n * n;
	if (n > longest)
	  longest = n;
	nids++;
      }
  while (++p < limit);

  nelts = table->nelements;
  overhead = FUNC5 (&table->stack) - total_bytes;
  headers = table->nslots * sizeof (hashnode);

  FUNC4 (stderr, "\nString pool\nentries\t\t%lu\n",
	   (unsigned long) nelts);
  FUNC4 (stderr, "identifiers\t%lu (%.2f%%)\n",
	   (unsigned long) nids, nids * 100.0 / nelts);
  FUNC4 (stderr, "slots\t\t%lu\n",
	   (unsigned long) table->nslots);
  FUNC4 (stderr, "bytes\t\t%lu%c (%lu%c overhead)\n",
	   SCALE (total_bytes), LABEL (total_bytes),
	   SCALE (overhead), LABEL (overhead));
  FUNC4 (stderr, "table size\t%lu%c\n",
	   SCALE (headers), LABEL (headers));

  exp_len = (double)total_bytes / (double)nelts;
  exp2_len = exp_len * exp_len;
  exp_len2 = (double) sum_of_squares / (double) nelts;

  FUNC4 (stderr, "coll/search\t%.4lu\n",
	   (double) table->collisions / (double) table->searches);
  FUNC4 (stderr, "ins/search\t%.4lu\n",
	   (double) nelts / (double) table->searches);
  FUNC4 (stderr, "avg. entry\t%.2lu bytes (+/- %.2f)\n",
	   exp_len, FUNC3 (exp_len2 - exp2_len));
  FUNC4 (stderr, "longest entry\t%lu\n",
	   (unsigned long) longest);
#undef SCALE
#undef LABEL
}