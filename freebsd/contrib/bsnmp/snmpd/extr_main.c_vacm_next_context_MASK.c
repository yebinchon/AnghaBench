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
struct vacm_context {int dummy; } ;

/* Variables and functions */
 struct vacm_context* FUNC0 (struct vacm_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vcl ; 

struct vacm_context *
FUNC1(struct vacm_context *vacmctx)
{
	if (vacmctx == NULL)
		return (NULL);

	return (FUNC0(vacmctx, vcl));
}