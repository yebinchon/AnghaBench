#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int tag; int /*<<< orphan*/  attr; struct TYPE_3__* next; } ;
typedef  TYPE_1__ obj_attribute_list ;
typedef  int /*<<< orphan*/  obj_attribute ;
typedef  int bfd_vma ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int NUM_KNOWN_OBJ_ATTRIBUTES ; 
 int /*<<< orphan*/  Tag_File ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__** FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int FUNC4 (char const*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7 (bfd *abfd, bfd_byte *contents, bfd_vma size,
			      int vendor)
{
  bfd_byte *p;
  obj_attribute *attr;
  obj_attribute_list *list;
  int i;
  const char *vendor_name = FUNC5 (abfd, vendor);
  size_t vendor_length = FUNC4 (vendor_name) + 1;

  p = contents;
  FUNC0 (abfd, size, p);
  p += 4;
  FUNC3 (p, vendor_name, vendor_length);
  p += vendor_length;
  *(p++) = Tag_File;
  FUNC0 (abfd, size - 4 - vendor_length, p);
  p += 4;

  attr = FUNC1 (abfd)[vendor];
  for (i = 4; i < NUM_KNOWN_OBJ_ATTRIBUTES; i++)
    p = FUNC6 (p, i, &attr[i]);

  for (list = FUNC2 (abfd)[vendor];
       list;
       list = list->next)
    p = FUNC6 (p, list->tag, &list->attr);
}