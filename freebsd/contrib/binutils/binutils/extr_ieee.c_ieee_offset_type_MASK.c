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
struct ieee_handle {int dummy; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (void*,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct ieee_handle*) ; 

__attribute__((used)) static bfd_boolean
FUNC2 (void *p)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  unsigned int targetindx, baseindx;

  targetindx = FUNC1 (info);
  baseindx = FUNC1 (info);

  /* FIXME: The MRI C++ compiler does not appear to generate any
     useful type information about an offset type.  It just records a
     pointer to member as an integer.  The MRI/HP IEEE spec does
     describe a pmisc record which can be used for a pointer to
     member.  Unfortunately, it does not describe the target type,
     which seems pretty important.  I'm going to punt this for now.  */

  return FUNC0 (p, 4, TRUE);
}