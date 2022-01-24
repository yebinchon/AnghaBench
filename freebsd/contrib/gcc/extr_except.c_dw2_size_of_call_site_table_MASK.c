#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct call_site_record {int /*<<< orphan*/  action; } ;
struct TYPE_4__ {TYPE_1__* eh; } ;
struct TYPE_3__ {int call_site_data_used; struct call_site_record* call_site_data; } ;

/* Variables and functions */
 TYPE_2__* cfun ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1 (void)
{
  int n = cfun->eh->call_site_data_used;
  int size = n * (4 + 4 + 4);
  int i;

  for (i = 0; i < n; ++i)
    {
      struct call_site_record *cs = &cfun->eh->call_site_data[i];
      size += FUNC0 (cs->action);
    }

  return size;
}