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
struct hash_entry {int dummy; } ;
struct hash_control {unsigned long size; scalar_t__ deletions; scalar_t__ replacements; scalar_t__ insertions; scalar_t__ string_compares; scalar_t__ hash_compares; scalar_t__ lookups; int /*<<< orphan*/  table; int /*<<< orphan*/  memory; } ;

/* Variables and functions */
 int /*<<< orphan*/  chunksize ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct hash_control* FUNC4 (int) ; 

struct hash_control *
FUNC5 (void)
{
  unsigned long size;
  unsigned long alloc;
  struct hash_control *ret;

  size = FUNC0 ();

  ret = FUNC4 (sizeof *ret);
  FUNC3 (&ret->memory, chunksize);
  alloc = size * sizeof (struct hash_entry *);
  ret->table = FUNC2 (&ret->memory, alloc);
  FUNC1 (ret->table, 0, alloc);
  ret->size = size;

#ifdef HASH_STATISTICS
  ret->lookups = 0;
  ret->hash_compares = 0;
  ret->string_compares = 0;
  ret->insertions = 0;
  ret->replacements = 0;
  ret->deletions = 0;
#endif

  return ret;
}