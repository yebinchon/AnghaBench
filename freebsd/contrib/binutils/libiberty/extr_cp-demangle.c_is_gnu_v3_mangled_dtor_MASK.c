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
typedef  enum gnu_v3_dtor_kinds { ____Placeholder_gnu_v3_dtor_kinds } gnu_v3_dtor_kinds ;
typedef  enum gnu_v3_ctor_kinds { ____Placeholder_gnu_v3_ctor_kinds } gnu_v3_ctor_kinds ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int*,int*) ; 

enum gnu_v3_dtor_kinds
FUNC1 (const char *name)
{
  enum gnu_v3_ctor_kinds ctor_kind;
  enum gnu_v3_dtor_kinds dtor_kind;

  if (! FUNC0 (name, &ctor_kind, &dtor_kind))
    return (enum gnu_v3_dtor_kinds) 0;
  return dtor_kind;
}