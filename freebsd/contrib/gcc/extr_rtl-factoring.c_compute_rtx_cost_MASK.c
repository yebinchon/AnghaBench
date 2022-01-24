#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hash_elem_def {int /*<<< orphan*/  insn; int /*<<< orphan*/  hash; } ;
struct hash_bucket_def {int /*<<< orphan*/  insn; int /*<<< orphan*/  hash; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  TYPE_1__* p_hash_elem ;
typedef  TYPE_2__* p_hash_bucket ;
struct TYPE_4__ {int /*<<< orphan*/  seq_candidates; } ;
struct TYPE_3__ {int length; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hash_buckets ; 
 void* FUNC3 (int /*<<< orphan*/ ,struct hash_elem_def*) ; 

__attribute__((used)) static int
FUNC4 (rtx insn)
{
  struct hash_bucket_def tmp_bucket;
  p_hash_bucket bucket;
  struct hash_elem_def tmp_elem;
  p_hash_elem elem = NULL;
  int cost = -1;

  /* Compute hash value for INSN.  */
  tmp_bucket.hash = FUNC1 (insn);

  /* Select the hash group.  */
  bucket = FUNC3 (hash_buckets, &tmp_bucket);

  if (bucket)
  {
    tmp_elem.insn = insn;

    /* Select the insn.  */
    elem = FUNC3 (bucket->seq_candidates, &tmp_elem);

    /* If INSN is parsed the cost will be the cached length.  */
    if (elem)
      cost = elem->length;
  }

  /* If we can't parse the INSN cost will be the instruction length.  */
  if (cost == -1)
  {
    cost = FUNC2 (insn);

    /* Cache the length.  */
    if (elem)
      elem->length = cost;
  }

  /* If we can't get an accurate estimate for a complex instruction,
     assume that it has the same cost as a single fast instruction.  */
  return cost != 0 ? cost : FUNC0 (1);
}