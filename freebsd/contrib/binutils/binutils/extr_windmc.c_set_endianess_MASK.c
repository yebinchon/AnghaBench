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
struct TYPE_3__ {scalar_t__ byteorder; char* name; } ;
typedef  TYPE_1__ bfd_target ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 scalar_t__ BFD_ENDIAN_BIG ; 
 char** FUNC0 () ; 
 TYPE_1__* FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 char const* def_target_arch ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,char) ; 
 size_t FUNC4 (char const*) ; 
 char* FUNC5 (char const*,char const*) ; 
 int target_is_bigendian ; 

__attribute__((used)) static void
FUNC6 (bfd *abfd, const char *target)
{
  const bfd_target *target_vec;

  def_target_arch = NULL;
  target_vec = FUNC1 (target, abfd);
  if (! target_vec)
    FUNC2 ("Can't detect target endianess and architecture.");
  target_is_bigendian = ((target_vec->byteorder == BFD_ENDIAN_BIG) ? 1 : 0);
  {
    const char *tname = target_vec->name;
    const char **arch = FUNC0 ();

    if (arch && tname)
      {
	if (FUNC3 (tname, '-') != NULL)
	  tname = FUNC3 (tname, '-') + 1;
	while (*arch != NULL)
	  {
	    const char *in_a = FUNC5 (*arch, tname);
	    char end_ch = (in_a ? in_a[FUNC4 (tname)] : 0);
	    if (in_a && (in_a == *arch || in_a[-1] == ':')
	        && end_ch == 0)
	      {
		def_target_arch = *arch;
		break;
	      }
	    arch++;
	  }
      }
    if (! def_target_arch)
      FUNC2 ("Can't detect architecture.");
  }
}