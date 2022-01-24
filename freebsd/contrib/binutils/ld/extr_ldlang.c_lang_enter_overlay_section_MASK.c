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
struct overlay_list {struct overlay_list* next; int /*<<< orphan*/  os; } ;
typedef  int /*<<< orphan*/  etree_type ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR ; 
 int /*<<< orphan*/  MAX_K ; 
 int /*<<< orphan*/  SIZEOF ; 
 int /*<<< orphan*/  current_section ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct overlay_list* overlay_list ; 
 int /*<<< orphan*/ * overlay_max ; 
 int /*<<< orphan*/  overlay_section ; 
 int /*<<< orphan*/  overlay_subalign ; 
 void* overlay_vma ; 
 struct overlay_list* FUNC3 (int) ; 

void
FUNC4 (const char *name)
{
  struct overlay_list *n;
  etree_type *size;

  FUNC2 (name, overlay_vma, overlay_section,
				       0, overlay_subalign, 0, 0);

  /* If this is the first section, then base the VMA of future
     sections on this one.  This will work correctly even if `.' is
     used in the addresses.  */
  if (overlay_list == NULL)
    overlay_vma = FUNC1 (ADDR, name);

  /* Remember the section.  */
  n = FUNC3 (sizeof *n);
  n->os = current_section;
  n->next = overlay_list;
  overlay_list = n;

  size = FUNC1 (SIZEOF, name);

  /* Arrange to work out the maximum section end address.  */
  if (overlay_max == NULL)
    overlay_max = size;
  else
    overlay_max = FUNC0 (MAX_K, overlay_max, size);
}