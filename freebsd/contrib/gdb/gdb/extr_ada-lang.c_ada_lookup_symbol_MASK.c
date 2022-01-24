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
struct symbol {int dummy; } ;
struct block {int dummy; } ;
typedef  int /*<<< orphan*/  domain_enum ;

/* Variables and functions */
 int FUNC0 (char const*,struct block*,int /*<<< orphan*/ ,struct symbol***,struct block***) ; 
 int /*<<< orphan*/  FUNC1 (struct symbol**,struct block**,int,int) ; 

struct symbol *
FUNC2 (const char *name, struct block *block0,
		   domain_enum domain)
{
  struct symbol **candidate_syms;
  struct block **candidate_blocks;
  int n_candidates;

  n_candidates = FUNC0 (name,
					 block0, domain,
					 &candidate_syms, &candidate_blocks);

  if (n_candidates == 0)
    return NULL;
  else if (n_candidates != 1)
    FUNC1 (candidate_syms, candidate_blocks, n_candidates, 1);

  return candidate_syms[0];
}