#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  windres_bfd ;
struct coff_file_info {char const* filename; scalar_t__ secaddr; int /*<<< orphan*/ * data_end; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  rc_res_id ;
typedef  int /*<<< orphan*/  rc_res_directory ;
typedef  int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;
struct TYPE_3__ {scalar_t__ ImageBase; } ;
struct TYPE_4__ {TYPE_1__ pe_opthdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  WR_KIND_BFD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char***) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ bfd_error_file_ambiguously_recognized ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfd_object ; 
 int /*<<< orphan*/ * FUNC9 (char const*,char const*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (char**) ; 
 TYPE_2__* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct coff_file_info*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 

rc_res_directory *
FUNC19 (const char *filename, const char *target)
{
  rc_res_directory *ret;
  bfd *abfd;
  windres_bfd wrbfd;
  char **matching;
  asection *sec;
  bfd_size_type size;
  bfd_byte *data;
  struct coff_file_info finfo;

  if (filename == NULL)
    FUNC11 (FUNC0("filename required for COFF input"));

  abfd = FUNC9 (filename, target);
  if (abfd == NULL)
    FUNC3 (filename);

  if (! FUNC1 (abfd, bfd_object, &matching))
    {
      FUNC8 (FUNC5 (abfd));
      if (FUNC4 () == bfd_error_file_ambiguously_recognized)
	FUNC13 (matching);
      FUNC18 (1);
    }

  sec = FUNC6 (abfd, ".rsrc");
  if (sec == NULL)
    {
      FUNC11 (FUNC0("%s: no resource section"), filename);
    }

  FUNC17 (&wrbfd, abfd, sec, WR_KIND_BFD);
  size = FUNC10 (abfd, sec);
  data = (bfd_byte *) FUNC16 (size);

  FUNC12 (&wrbfd, data, 0, size);

  finfo.filename = filename;
  finfo.data = data;
  finfo.data_end = data + size;
  finfo.secaddr = (FUNC7 (abfd, sec)
		   - FUNC14 (abfd)->pe_opthdr.ImageBase);

  /* Now just read in the top level resource directory.  Note that we
     don't free data, since we create resource entries that point into
     it.  If we ever want to free up the resource information we read,
     this will have to be cleaned up.  */

  ret = FUNC15 (&wrbfd, data, &finfo, (const rc_res_id *) NULL, 0);
  
  FUNC2 (abfd);

  return ret;
}