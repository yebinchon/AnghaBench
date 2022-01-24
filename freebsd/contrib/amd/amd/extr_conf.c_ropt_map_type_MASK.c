#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  cfm_type; } ;
typedef  TYPE_1__ cf_map_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static int
FUNC3(const char *val, cf_map_t *cfm)
{
  /* check if map type exist */
  if (!FUNC1(val)) {
    FUNC0(stderr, "conf: no such map type \"%s\"\n", val);
    return 1;
  }
  cfm->cfm_type = FUNC2(val);
  return 0;
}