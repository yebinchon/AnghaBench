#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ pointer; scalar_t__ element_size; scalar_t__ size; scalar_t__ chunk_size; char* data; } ;
typedef  TYPE_1__ stack ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,scalar_t__) ; 
 char* FUNC1 (char*,scalar_t__) ; 

__attribute__((used)) static char *
FUNC2 (stack *st, char *element)
{
  if (st->pointer + st->element_size >= st->size)
    {
      st->size += st->chunk_size;
      if ((st->data = FUNC1 (st->data, st->size)) == NULL)
	return NULL;
    }
  FUNC0 (st->data + st->pointer, element, st->element_size);
  st->pointer += st->element_size;
  return st->data + st->pointer;
}