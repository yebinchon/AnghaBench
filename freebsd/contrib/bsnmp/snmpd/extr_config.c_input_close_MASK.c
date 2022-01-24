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
struct input {int type; struct input* input_str; struct input* input_filename; int /*<<< orphan*/  input_fp; } ;

/* Variables and functions */
#define  INPUT_FILE 129 
#define  INPUT_STRING 128 
 struct input* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct input*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct input*) ; 
 int /*<<< orphan*/  inputs ; 
 int /*<<< orphan*/  link ; 

__attribute__((used)) static void
FUNC5(void)
{
	struct input *input;

	if ((input = FUNC0(&inputs)) == NULL)
		FUNC2();
	switch (input->type) {

	  case INPUT_FILE:
		FUNC3(input->input_fp);
		FUNC4(input->input_filename);
		break;

	  case INPUT_STRING:
		FUNC4(input->input_str);
		break;
	}
	FUNC1(input, link);
	FUNC4(input);
}