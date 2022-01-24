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
typedef  scalar_t__ hashnode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  HT_NO_INSERT ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,unsigned char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ident_hash ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

tree
FUNC3 (const char *text)
{
  hashnode ht_node;

  ht_node = FUNC1 (ident_hash, (const unsigned char *) text,
		       FUNC2 (text), HT_NO_INSERT);
  if (ht_node)
    return FUNC0 (ht_node);

  return NULL_TREE;
}