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
typedef  int /*<<< orphan*/  hashnode ;

/* Variables and functions */
 int /*<<< orphan*/  HT_ALLOCED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ident_hash ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static inline tree
FUNC3 (const char *name)
{
  hashnode ht_node = FUNC1 (ident_hash, (const unsigned char *) name,
				FUNC2 (name), HT_ALLOCED);
  return FUNC0 (ht_node);
}