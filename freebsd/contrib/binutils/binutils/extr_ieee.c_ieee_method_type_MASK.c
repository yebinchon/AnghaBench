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
typedef  scalar_t__ bfd_boolean ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee_handle*) ; 

__attribute__((used)) static bfd_boolean
FUNC2 (void *p, bfd_boolean domain, int argcount,
		  bfd_boolean varargs)
{
  struct ieee_handle *info = (struct ieee_handle *) p;

  /* FIXME: The MRI/HP IEEE spec defines a pmisc record to use for a
     method, but the definition is incomplete.  We just output an 'x'
     type.  */

  if (domain)
    FUNC1 (info);

  return FUNC0 (p, argcount, varargs);
}