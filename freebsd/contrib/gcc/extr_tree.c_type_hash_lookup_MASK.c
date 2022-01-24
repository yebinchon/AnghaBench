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
struct type_hash {int /*<<< orphan*/  type; int /*<<< orphan*/  hash; } ;
typedef  int /*<<< orphan*/  hashval_t ;

/* Variables and functions */
 int /*<<< orphan*/  NULL_TREE ; 
 struct type_hash* FUNC0 (int /*<<< orphan*/ ,struct type_hash*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  type_hash_table ; 

tree
FUNC2 (hashval_t hashcode, tree type)
{
  struct type_hash *h, in;

  /* The TYPE_ALIGN field of a type is set by layout_type(), so we
     must call that routine before comparing TYPE_ALIGNs.  */
  FUNC1 (type);

  in.hash = hashcode;
  in.type = type;

  h = FUNC0 (type_hash_table, &in, hashcode);
  if (h)
    return h->type;
  return NULL_TREE;
}