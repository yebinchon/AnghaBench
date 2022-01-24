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
struct target_ops {int dummy; } ;
struct objfile {int dummy; } ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 int /*<<< orphan*/  OBJF_SHARED ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  exec_bfd ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct objfile* FUNC6 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7 (char *arg_string, int from_tty, struct target_ops *target, int readsyms)
{
  asection *libsect;

  if (!readsyms)
    return;

  libsect = FUNC2 (exec_bfd, ".lib");

  if (libsect)
    {
      int libsize;
      unsigned char *lib;
      struct libent
	{
	  bfd_byte len[4];
	  bfd_byte nameoffset[4];
	};

      libsize = FUNC4 (exec_bfd, libsect);

      lib = (unsigned char *) FUNC0 (libsize);

      FUNC3 (exec_bfd, libsect, lib, 0, libsize);

      while (libsize > 0)
	{
	  struct libent *ent;
	  struct objfile *objfile;
	  int len, nameoffset;
	  char *filename;

	  ent = (struct libent *) lib;

	  len = FUNC1 (exec_bfd, ent->len);

	  nameoffset = FUNC1 (exec_bfd, ent->nameoffset);

	  if (len <= 0)
	    break;

	  filename = (char *) ent + nameoffset * 4;

	  objfile = FUNC6 (filename, from_tty,
				     NULL,	/* no offsets */
				     0,		/* not mainline */
				     OBJF_SHARED);	/* flags */

	  libsize -= len * 4;
	  lib += len * 4;
	}

      /* Getting new symbols may change our opinion about what is
         frameless.  */
      FUNC5 ();
    }
}