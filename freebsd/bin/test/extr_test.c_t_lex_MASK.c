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
typedef  enum token { ____Placeholder_token } token ;

/* Variables and functions */
 scalar_t__ BUNOP ; 
 int EOI ; 
 int LPAREN ; 
 int OPERAND ; 
 int RPAREN ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ UNOP ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static enum token
FUNC5(char *s)
{
	int num;

	if (s == NULL) {
		return EOI;
	}
	num = FUNC1(s);
	if (((FUNC0(num) == UNOP || FUNC0(num) == BUNOP)
				&& FUNC4()) ||
	    (num == LPAREN && FUNC2()) ||
	    (num == RPAREN && FUNC3()))
		return OPERAND;
	return num;
}