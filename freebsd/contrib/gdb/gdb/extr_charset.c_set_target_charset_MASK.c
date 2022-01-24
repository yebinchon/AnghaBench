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
 int /*<<< orphan*/  current_host_charset ; 
 struct charset* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct charset*) ; 

__attribute__((used)) static void
FUNC2 (const char *charset)
{
  struct charset *cs = FUNC0 (charset);

  FUNC1 (current_host_charset, cs);
}