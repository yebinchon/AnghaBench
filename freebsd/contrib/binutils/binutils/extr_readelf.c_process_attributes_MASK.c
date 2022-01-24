#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ bfd_vma ;
typedef  scalar_t__ bfd_boolean ;
struct TYPE_5__ {unsigned int e_shnum; } ;
struct TYPE_4__ {unsigned int sh_type; scalar_t__ sh_size; int /*<<< orphan*/  sh_offset; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ Elf_Internal_Shdr ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 unsigned int SHT_GNU_ATTRIBUTES ; 
 scalar_t__ TRUE ; 
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (unsigned char*,int) ; 
 unsigned char* FUNC2 (unsigned char*,unsigned char* (*) (unsigned char*,int)) ; 
 TYPE_3__ elf_header ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (unsigned char*,unsigned int*) ; 
 TYPE_1__* section_headers ; 
 scalar_t__ FUNC7 (char*,char const*) ; 
 int FUNC8 (char*) ; 

__attribute__((used)) static int
FUNC9 (FILE *file, const char *public_name,
		    unsigned int proc_type,
		    unsigned char *(*display_pub_attribute) (unsigned char *),
		    unsigned char *(*display_proc_gnu_attribute)
			 (unsigned char *, int))
{
  Elf_Internal_Shdr *sect;
  unsigned char *contents;
  unsigned char *p;
  unsigned char *end;
  bfd_vma section_len;
  bfd_vma len;
  unsigned i;

  /* Find the section header so that we get the size.  */
  for (i = 0, sect = section_headers;
       i < elf_header.e_shnum;
       i++, sect++)
    {
      if (sect->sh_type != proc_type && sect->sh_type != SHT_GNU_ATTRIBUTES)
	continue;

      contents = FUNC4 (NULL, file, sect->sh_offset, 1, sect->sh_size,
			   FUNC0("attributes"));

      if (!contents)
	continue;
      p = contents;
      if (*p == 'A')
	{
	  len = sect->sh_size - 1;
	  p++;
	  while (len > 0)
	    {
	      int namelen;
	      bfd_boolean public_section;
	      bfd_boolean gnu_section;

	      section_len = FUNC1 (p, 4);
	      p += 4;
	      if (section_len > len)
		{
		  FUNC5 (FUNC0("ERROR: Bad section length (%d > %d)\n"),
			  (int)section_len, (int)len);
		  section_len = len;
		}
	      len -= section_len;
	      FUNC5 ("Attribute Section: %s\n", p);
	      if (public_name && FUNC7 ((char *)p, public_name) == 0)
		public_section = TRUE;
	      else
		public_section = FALSE;
	      if (FUNC7 ((char *)p, "gnu") == 0)
		gnu_section = TRUE;
	      else
		gnu_section = FALSE;
	      namelen = FUNC8 ((char *)p) + 1;
	      p += namelen;
	      section_len -= namelen + 4;
	      while (section_len > 0)
		{
		  int tag = *(p++);
		  int val;
		  bfd_vma size;
		  size = FUNC1 (p, 4);
		  if (size > section_len)
		    {
		      FUNC5 (FUNC0("ERROR: Bad subsection length (%d > %d)\n"),
			      (int)size, (int)section_len);
		      size = section_len;
		    }
		  section_len -= size;
		  end = p + size - 1;
		  p += 4;
		  switch (tag)
		    {
		    case 1:
		      FUNC5 ("File Attributes\n");
		      break;
		    case 2:
		      FUNC5 ("Section Attributes:");
		      goto do_numlist;
		    case 3:
		      FUNC5 ("Symbol Attributes:");
		    do_numlist:
		      for (;;)
			{
			  unsigned int i;
			  val = FUNC6 (p, &i);
			  p += i;
			  if (val == 0)
			    break;
			  FUNC5 (" %d", val);
			}
		      FUNC5 ("\n");
		      break;
		    default:
		      FUNC5 ("Unknown tag: %d\n", tag);
		      public_section = FALSE;
		      break;
		    }
		  if (public_section)
		    {
		      while (p < end)
			p = display_pub_attribute (p);
		    }
		  else if (gnu_section)
		    {
		      while (p < end)
			p = FUNC2 (p,
						   display_proc_gnu_attribute);
		    }
		  else
		    {
		      /* ??? Do something sensible, like dump hex.  */
		      FUNC5 ("  Unknown section contexts\n");
		      p = end;
		    }
		}
	    }
	}
      else
	{
	  FUNC5 (FUNC0("Unknown format '%c'\n"), *p);
	}

      FUNC3(contents);
    }
  return 1;
}