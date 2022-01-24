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
struct demangle_component {int dummy; } ;
struct d_info {int /*<<< orphan*/  did_subs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct d_info*,char) ; 
 struct demangle_component* FUNC1 (struct d_info*,long) ; 
 long FUNC2 (struct d_info*) ; 
 char FUNC3 (struct d_info*) ; 

__attribute__((used)) static struct demangle_component *
FUNC4 (struct d_info *di)
{
  long param;

  if (! FUNC0 (di, 'T'))
    return NULL;

  if (FUNC3 (di) == '_')
    param = 0;
  else
    {
      param = FUNC2 (di);
      if (param < 0)
	return NULL;
      param += 1;
    }

  if (! FUNC0 (di, '_'))
    return NULL;

  ++di->did_subs;

  return FUNC1 (di, param);
}