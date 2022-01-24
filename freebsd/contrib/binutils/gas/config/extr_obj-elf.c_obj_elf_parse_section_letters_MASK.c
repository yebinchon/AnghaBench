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
 int SHF_ALLOC ; 
 int SHF_EXECINSTR ; 
 int SHF_GROUP ; 
 int SHF_MERGE ; 
 int SHF_STRINGS ; 
 int SHF_TLS ; 
 int SHF_WRITE ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char,char**) ; 

__attribute__((used)) static int
FUNC3 (char *str, size_t len)
{
  int attr = 0;

  while (len > 0)
    {
      switch (*str)
	{
	case 'a':
	  attr |= SHF_ALLOC;
	  break;
	case 'w':
	  attr |= SHF_WRITE;
	  break;
	case 'x':
	  attr |= SHF_EXECINSTR;
	  break;
	case 'M':
	  attr |= SHF_MERGE;
	  break;
	case 'S':
	  attr |= SHF_STRINGS;
	  break;
	case 'G':
	  attr |= SHF_GROUP;
	  break;
	case 'T':
	  attr |= SHF_TLS;
	  break;
	/* Compatibility.  */
	case 'm':
	  if (*(str - 1) == 'a')
	    {
	      attr |= SHF_MERGE;
	      if (len > 1 && str[1] == 's')
		{
		  attr |= SHF_STRINGS;
		  str++, len--;
		}
	      break;
	    }
	default:
	  {
	    char *bad_msg = FUNC0("unrecognized .section attribute: want a,w,x,M,S,G,T");
#ifdef md_elf_section_letter
	    int md_attr = md_elf_section_letter (*str, &bad_msg);
	    if (md_attr >= 0)
	      attr |= md_attr;
	    else
#endif
	      FUNC1 ("%s", bad_msg);
	  }
	  break;
	}
      str++, len--;
    }

  return attr;
}