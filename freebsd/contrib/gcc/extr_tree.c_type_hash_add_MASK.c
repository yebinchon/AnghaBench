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
 int /*<<< orphan*/  INSERT ; 
 struct type_hash* FUNC0 (int) ; 
 void** FUNC1 (int /*<<< orphan*/ ,struct type_hash*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  type_hash_table ; 

void
FUNC2 (hashval_t hashcode, tree type)
{
  struct type_hash *h;
  void **loc;

  h = FUNC0 (sizeof (struct type_hash));
  h->hash = hashcode;
  h->type = type;
  loc = FUNC1 (type_hash_table, h, hashcode, INSERT);
  *(struct type_hash **) loc = h;
}