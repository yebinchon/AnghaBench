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
struct macro {int length; int /*<<< orphan*/  value; int /*<<< orphan*/  name; } ;
struct input {int input_left; int /*<<< orphan*/ * input_str; int /*<<< orphan*/ * input_ptr; int /*<<< orphan*/  input_macro; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  INPUT_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct input*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct input*) ; 
 int /*<<< orphan*/  inputs ; 
 int /*<<< orphan*/  link ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(struct macro *m)
{
	struct input *input;

	if ((input = FUNC2(sizeof(*input))) == NULL)
		FUNC4("%m");
	input->type = INPUT_STRING;
	input->input_macro = m->name;
	if ((input->input_str = FUNC2(m->length)) == NULL) {
		FUNC1(input);
		FUNC4("%m");
	}
	FUNC3(input->input_str, m->value, m->length);
	input->input_ptr = input->input_str;
	input->input_left = m->length;
	FUNC0(&inputs, input, link);
}