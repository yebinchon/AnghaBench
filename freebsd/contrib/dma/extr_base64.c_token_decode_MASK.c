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

/* Variables and functions */
 unsigned int DECODE_ERROR ; 
 scalar_t__ FUNC0 (char const) ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static unsigned int
FUNC2(const char *token)
{
	int i;
	unsigned int val = 0;
	int marker = 0;
	if (FUNC1(token) < 4)
		return DECODE_ERROR;
	for (i = 0; i < 4; i++) {
		val *= 64;
		if (token[i] == '=')
			marker++;
		else if (marker > 0)
			return DECODE_ERROR;
		else
			val += FUNC0(token[i]);
	}
	if (marker > 2)
		return DECODE_ERROR;
	return (marker << 24) | val;
}