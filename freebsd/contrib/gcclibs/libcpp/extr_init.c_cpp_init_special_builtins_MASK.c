#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct builtin {scalar_t__ value; int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
typedef  enum builtin_type { ____Placeholder_builtin_type } builtin_type ;
typedef  int /*<<< orphan*/  cpp_reader ;
struct TYPE_4__ {int builtin; } ;
struct TYPE_5__ {int flags; TYPE_1__ value; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ cpp_hashnode ;

/* Variables and functions */
 size_t FUNC0 (struct builtin const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int NODE_BUILTIN ; 
 int NODE_WARN ; 
 int /*<<< orphan*/  NT_MACRO ; 
 struct builtin const* builtin_array ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  std ; 
 int /*<<< orphan*/  stdc_0_in_system_headers ; 
 int /*<<< orphan*/  traditional ; 

void
FUNC3 (cpp_reader *pfile)
{
  const struct builtin *b;
  size_t n = FUNC0 (builtin_array);

  if (FUNC1 (pfile, traditional))
    n -= 2;
  else if (! FUNC1 (pfile, stdc_0_in_system_headers)
	   || FUNC1 (pfile, std))
    n--;

  for (b = builtin_array; b < builtin_array + n; b++)
    {
      cpp_hashnode *hp = FUNC2 (pfile, b->name, b->len);
      hp->type = NT_MACRO;
      hp->flags |= NODE_BUILTIN | NODE_WARN;
      hp->value.builtin = (enum builtin_type) b->value;
    }
}