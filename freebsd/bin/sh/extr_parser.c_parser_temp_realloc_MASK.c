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
struct parser_temp {void* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 void* FUNC0 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct parser_temp* parser_temp ; 

__attribute__((used)) static void *
FUNC2(void *ptr, size_t len)
{
	struct parser_temp *t;

	INTOFF;
	t = parser_temp;
	if (ptr != t->data)
		FUNC1("bug: parser_temp_realloc misused");
	t->data = FUNC0(t->data, len);
	INTON;
	return t->data;
}