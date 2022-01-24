#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int has_armap; int /*<<< orphan*/  flags; struct TYPE_11__* archive_next; } ;
typedef  TYPE_1__ bfd ;

/* Variables and functions */
 int /*<<< orphan*/  BFD_TRADITIONAL_FORMAT ; 
 scalar_t__ ar_truncate ; 
 int /*<<< orphan*/  bfd_archive ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*) ; 
 TYPE_1__* output_bfd ; 
 char* output_filename ; 
 scalar_t__ FUNC8 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ write_armap ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 char* FUNC12 (scalar_t__) ; 

__attribute__((used)) static void
FUNC13 (bfd *iarch)
{
  bfd *obfd;
  char *old_name, *new_name;
  bfd *contents_head = iarch->archive_next;

  old_name = FUNC12 (FUNC10 (FUNC2 (iarch)) + 1);
  FUNC9 (old_name, FUNC2 (iarch));
  new_name = FUNC7 (old_name);

  if (new_name == NULL)
    FUNC1 ("could not create temporary file whilst writing archive");
  
  output_filename = new_name;

  obfd = FUNC4 (new_name, FUNC3 (iarch));

  if (obfd == NULL)
    FUNC1 (old_name);

  output_bfd = obfd;

  FUNC6 (obfd, bfd_archive);

  /* Request writing the archive symbol table unless we've
     been explicitly requested not to.  */
  obfd->has_armap = write_armap >= 0;

  if (ar_truncate)
    {
      /* This should really use bfd_set_file_flags, but that rejects
         archives.  */
      obfd->flags |= BFD_TRADITIONAL_FORMAT;
    }

  if (!FUNC5 (obfd, contents_head))
    FUNC1 (old_name);

  if (!FUNC0 (obfd))
    FUNC1 (old_name);

  output_bfd = NULL;
  output_filename = NULL;

  /* We don't care if this fails; we might be creating the archive.  */
  FUNC0 (iarch);

  if (FUNC8 (new_name, old_name, 0) != 0)
    FUNC11 (1);
}