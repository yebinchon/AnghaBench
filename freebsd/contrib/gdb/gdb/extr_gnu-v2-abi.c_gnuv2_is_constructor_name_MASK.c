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
typedef  enum ctor_kinds { ____Placeholder_ctor_kinds } ctor_kinds ;

/* Variables and functions */
 int complete_object_ctor ; 
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char*,char const) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 

__attribute__((used)) static enum ctor_kinds
FUNC3 (const char *name)
{
  if ((name[0] == '_' && name[1] == '_'
       && (FUNC0 (name[2]) || FUNC1 ("Qt", name[2])))
      || FUNC2 (name, "__ct__", 6) == 0)
    return complete_object_ctor;
  else
    return 0;
}