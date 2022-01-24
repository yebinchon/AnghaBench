#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_2__ {char* name; int /*<<< orphan*/  type; int /*<<< orphan*/  descsz; int /*<<< orphan*/  namesz; } ;
typedef  TYPE_1__ Elf_External_Note ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,void const*,int) ; 
 char* FUNC2 (char*,int) ; 
 int FUNC3 (char const*) ; 

char *
FUNC4 (bfd *abfd,
		    char *buf,
		    int *bufsiz,
		    const char *name,
		    int type,
		    const void *input,
		    int size)
{
  Elf_External_Note *xnp;
  size_t namesz;
  size_t newspace;
  char *dest;

  namesz = 0;
  if (name != NULL)
    namesz = FUNC3 (name) + 1;

  newspace = 12 + ((namesz + 3) & -4) + ((size + 3) & -4);

  buf = FUNC2 (buf, *bufsiz + newspace);
  dest = buf + *bufsiz;
  *bufsiz += newspace;
  xnp = (Elf_External_Note *) dest;
  FUNC0 (abfd, namesz, xnp->namesz);
  FUNC0 (abfd, size, xnp->descsz);
  FUNC0 (abfd, type, xnp->type);
  dest = xnp->name;
  if (name != NULL)
    {
      FUNC1 (dest, name, namesz);
      dest += namesz;
      while (namesz & 3)
	{
	  *dest++ = '\0';
	  ++namesz;
	}
    }
  FUNC1 (dest, input, size);
  dest += size;
  while (size & 3)
    {
      *dest++ = '\0';
      ++size;
    }
  return buf;
}