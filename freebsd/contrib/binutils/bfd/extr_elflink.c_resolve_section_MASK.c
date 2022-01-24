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
typedef  scalar_t__ bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_3__ {char const* name; scalar_t__ size; scalar_t__ vma; struct TYPE_3__* next; } ;
typedef  TYPE_1__ asection ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (char const*,char const*) ; 
 unsigned int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char*,char const*,int) ; 

__attribute__((used)) static bfd_boolean
FUNC3 (const char *  name,
		 asection *    sections,
		 bfd_vma *     result)
{
  asection *    curr;
  unsigned int  len;

  for (curr = sections; curr; curr = curr->next)    
    if (FUNC0 (curr->name, name) == 0)
      {
	*result = curr->vma;
	return TRUE;
      }

  /* Hmm. still haven't found it. try pseudo-section names.  */
  for (curr = sections; curr; curr = curr->next)    
    {
      len = FUNC1 (curr->name);
      if (len > FUNC1 (name)) 
	continue;

      if (FUNC2 (curr->name, name, len) == 0)
	{
	  if (FUNC2 (".end", name + len, 4) == 0)
	    {
	      *result = curr->vma + curr->size;
	      return TRUE;
	    }

	  /* Insert more pseudo-section names here, if you like.  */
	}
    }
  
  return FALSE;
}