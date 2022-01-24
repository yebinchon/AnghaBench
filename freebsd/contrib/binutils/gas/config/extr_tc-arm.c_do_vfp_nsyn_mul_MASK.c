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
typedef  enum neon_shape { ____Placeholder_neon_shape } neon_shape ;

/* Variables and functions */
 int NS_FFF ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void
FUNC1 (enum neon_shape rs)
{
  if (rs == NS_FFF)
    FUNC0 ("fmuls");
  else
    FUNC0 ("fmuld");
}