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
struct charset {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct charset*) ; 
 int /*<<< orphan*/  current_target_charset ; 
 struct charset* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct charset*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (const char *charset)
{
  struct charset *cs = FUNC1 (charset);
  FUNC0 (cs);
  FUNC2 (cs, current_target_charset);
}