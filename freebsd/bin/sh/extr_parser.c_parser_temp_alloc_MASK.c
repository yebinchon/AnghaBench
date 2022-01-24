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
struct parser_temp {void* data; struct parser_temp* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 void* FUNC0 (size_t) ; 
 struct parser_temp* parser_temp ; 

__attribute__((used)) static void *
FUNC1(size_t len)
{
	struct parser_temp *t;

	INTOFF;
	t = FUNC0(sizeof(*t));
	t->data = NULL;
	t->next = parser_temp;
	parser_temp = t;
	t->data = FUNC0(len);
	INTON;
	return t->data;
}