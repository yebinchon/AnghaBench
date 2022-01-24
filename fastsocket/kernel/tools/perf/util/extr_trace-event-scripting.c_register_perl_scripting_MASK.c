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
struct scripting_ops {int dummy; } ;
struct scripting_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*,struct scripting_ops*) ; 
 int /*<<< orphan*/  scripting_context ; 

__attribute__((used)) static void FUNC3(struct scripting_ops *scripting_ops)
{
	int err;
	err = FUNC2("Perl", scripting_ops);
	if (err)
		FUNC0("error registering Perl script extension");

	err = FUNC2("pl", scripting_ops);
	if (err)
		FUNC0("error registering pl script extension");

	scripting_context = FUNC1(sizeof(struct scripting_context));
}