#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int len; char* ptr; } ;
typedef  TYPE_1__ sb ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__ macro_alternate ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char) ; 

__attribute__((used)) static int
FUNC4 (int idx, sb *in, sb *name)
{
  if (idx < in->len
      && FUNC0 (in->ptr[idx]))
    {
      FUNC3 (name, in->ptr[idx++]);
      while (idx < in->len
	     && FUNC2 (in->ptr[idx]))
	{
	  FUNC3 (name, in->ptr[idx++]);
	}
      if (idx < in->len
	     && FUNC1 (in->ptr[idx]))
	{
	  FUNC3 (name, in->ptr[idx++]);
	}
    }
  /* Ignore trailing &.  */
  if (macro_alternate && idx < in->len && in->ptr[idx] == '&')
    idx++;
  return idx;
}