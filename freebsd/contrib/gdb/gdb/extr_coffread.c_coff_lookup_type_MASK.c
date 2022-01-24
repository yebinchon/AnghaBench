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
struct type {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type**,int /*<<< orphan*/ ,int) ; 
 struct type** type_vector ; 
 int type_vector_length ; 
 scalar_t__ FUNC1 (char*,int) ; 

__attribute__((used)) static struct type **
FUNC2 (int index)
{
  if (index >= type_vector_length)
    {
      int old_vector_length = type_vector_length;

      type_vector_length *= 2;
      if (index /* is still */  >= type_vector_length)
	type_vector_length = index * 2;

      type_vector = (struct type **)
	FUNC1 ((char *) type_vector,
		  type_vector_length * sizeof (struct type *));
      FUNC0 (&type_vector[old_vector_length], 0,
	 (type_vector_length - old_vector_length) * sizeof (struct type *));
    }
  return &type_vector[index];
}