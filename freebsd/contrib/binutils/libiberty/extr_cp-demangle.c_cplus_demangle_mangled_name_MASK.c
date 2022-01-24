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
 struct demangle_component* FUNC1 (struct d_info*,int) ; 

struct demangle_component *
FUNC2 (struct d_info *di, int top_level)
{
  if (! FUNC0 (di, '_'))
    return NULL;
  if (! FUNC0 (di, 'Z'))
    return NULL;
  return FUNC1 (di, top_level);
}