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
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned int) ; 
 void* FUNC2 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (unsigned char*,unsigned int,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 

__attribute__((used)) static bfd_vma *
FUNC6 (FILE *file, unsigned int number, unsigned int ent_size)
{
  unsigned char *e_data;
  bfd_vma *i_data;

  e_data = FUNC2 (number, ent_size);

  if (e_data == NULL)
    {
      FUNC3 (FUNC0("Out of memory\n"));
      return NULL;
    }

  if (FUNC4 (e_data, ent_size, number, file) != number)
    {
      FUNC3 (FUNC0("Unable to read in dynamic data\n"));
      return NULL;
    }

  i_data = FUNC2 (number, sizeof (*i_data));

  if (i_data == NULL)
    {
      FUNC3 (FUNC0("Out of memory\n"));
      FUNC5 (e_data);
      return NULL;
    }

  while (number--)
    i_data[number] = FUNC1 (e_data + number * ent_size, ent_size);

  FUNC5 (e_data);

  return i_data;
}