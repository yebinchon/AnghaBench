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
typedef  void* tree ;
struct mem_address {void* base; void* index; } ;

/* Variables and functions */
 int /*<<< orphan*/  PLUS_EXPR ; 
 void* FUNC0 (void*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*) ; 

__attribute__((used)) static void
FUNC3 (struct mem_address *parts, tree elt)
{
  tree type;

  if (!parts->index)
    {
      parts->index = elt;
      return;
    }

  if (!parts->base)
    {
      parts->base = elt;
      return;
    }

  /* Add ELT to base.  */
  type = FUNC0 (parts->base);
  parts->base = FUNC1 (PLUS_EXPR, type,
			     parts->base,
			     FUNC2 (type, elt));
}