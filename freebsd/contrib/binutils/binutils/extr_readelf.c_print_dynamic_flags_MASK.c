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
typedef  int bfd_vma ;

/* Variables and functions */
#define  DF_BIND_NOW 132 
#define  DF_ORIGIN 131 
#define  DF_STATIC_TLS 130 
#define  DF_SYMBOLIC 129 
#define  DF_TEXTREL 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC3 (bfd_vma flags)
{
  int first = 1;

  while (flags)
    {
      bfd_vma flag;

      flag = flags & - flags;
      flags &= ~ flag;

      if (first)
	first = 0;
      else
	FUNC1 (' ', stdout);

      switch (flag)
	{
	case DF_ORIGIN:		FUNC0 ("ORIGIN", stdout); break;
	case DF_SYMBOLIC:	FUNC0 ("SYMBOLIC", stdout); break;
	case DF_TEXTREL:	FUNC0 ("TEXTREL", stdout); break;
	case DF_BIND_NOW:	FUNC0 ("BIND_NOW", stdout); break;
	case DF_STATIC_TLS:	FUNC0 ("STATIC_TLS", stdout); break;
	default:		FUNC0 ("unknown", stdout); break;
	}
    }
  FUNC2 ("");
}