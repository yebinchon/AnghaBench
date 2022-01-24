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
struct flist {int /*<<< orphan*/  name; scalar_t__ started_p; struct flist* next; int /*<<< orphan*/  f; } ;
typedef  int lang_bitmap ;

/* Variables and functions */
 size_t NUM_BASE_FILES ; 
 int /*<<< orphan*/ * base_files ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (struct flist *flp, const char *pfx, const char *lastname,
		   const char *tname, const char *name)
{
  struct flist *fli2;

  for (fli2 = flp; fli2; fli2 = fli2->next)
    if (fli2->started_p)
      {
	FUNC1 (fli2->f, "  %s\n", lastname);
	FUNC1 (fli2->f, "};\n\n");
      }

  for (fli2 = flp; fli2; fli2 = fli2->next)
    if (fli2->started_p)
      {
	lang_bitmap bitmap = FUNC0 (fli2->name);
	int fnum;

	for (fnum = 0; bitmap != 0; fnum++, bitmap >>= 1)
	  if (bitmap & 1)
	    {
	      FUNC1 (base_files[fnum],
		       "extern const struct %s gt_%s_",
		       tname, pfx);
	      FUNC2 (base_files[fnum], fli2->name);
	      FUNC1 (base_files[fnum], "[];\n");
	    }
      }

  {
    size_t fnum;
    for (fnum = 0; fnum < NUM_BASE_FILES; fnum++)
      FUNC1 (base_files [fnum],
	       "const struct %s * const %s[] = {\n",
	       tname, name);
  }


  for (fli2 = flp; fli2; fli2 = fli2->next)
    if (fli2->started_p)
      {
	lang_bitmap bitmap = FUNC0 (fli2->name);
	int fnum;

	fli2->started_p = 0;

	for (fnum = 0; bitmap != 0; fnum++, bitmap >>= 1)
	  if (bitmap & 1)
	    {
	      FUNC1 (base_files[fnum], "  gt_%s_", pfx);
	      FUNC2 (base_files[fnum], fli2->name);
	      FUNC1 (base_files[fnum], ",\n");
	    }
      }

  {
    size_t fnum;
    for (fnum = 0; fnum < NUM_BASE_FILES; fnum++)
      {
	FUNC1 (base_files[fnum], "  NULL\n");
	FUNC1 (base_files[fnum], "};\n");
      }
  }
}