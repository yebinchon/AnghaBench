#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  rtl; } ;
struct attr_hash {int hashcode; struct attr_hash* next; TYPE_1__ u; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int RTL_HASH_SIZE ; 
 struct attr_hash** attr_hash_table ; 
 int /*<<< orphan*/  hash_obstack ; 
 struct attr_hash* FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1 (int hashcode, rtx rtl)
{
  struct attr_hash *h;

  h = FUNC0 (hash_obstack, sizeof (struct attr_hash));
  h->hashcode = hashcode;
  h->u.rtl = rtl;
  h->next = attr_hash_table[hashcode % RTL_HASH_SIZE];
  attr_hash_table[hashcode % RTL_HASH_SIZE] = h;
}