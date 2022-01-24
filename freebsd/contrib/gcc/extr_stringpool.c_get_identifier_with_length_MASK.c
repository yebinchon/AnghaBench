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
 int /*<<< orphan*/  HT_ALLOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ident_hash ; 

tree
FUNC2 (const char *text, size_t length)
{
  hashnode ht_node = FUNC1 (ident_hash,
				(const unsigned char *) text,
				length, HT_ALLOC);

  /* ht_node can't be NULL here.  */
  return FUNC0 (ht_node);
}