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
struct d_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct d_info*,char) ; 
 struct demangle_component** FUNC1 (struct d_info*,struct demangle_component**,int) ; 
 struct demangle_component* FUNC2 (struct d_info*) ; 

__attribute__((used)) static struct demangle_component *
FUNC3 (struct d_info *di)
{
  struct demangle_component *ret;
  struct demangle_component **pret;

  if (! FUNC0 (di, 'N'))
    return NULL;

  pret = FUNC1 (di, &ret, 1);
  if (pret == NULL)
    return NULL;

  *pret = FUNC2 (di);
  if (*pret == NULL)
    return NULL;

  if (! FUNC0 (di, 'E'))
    return NULL;

  return ret;
}