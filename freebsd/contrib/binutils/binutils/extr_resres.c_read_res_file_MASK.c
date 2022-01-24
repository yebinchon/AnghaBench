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
typedef  int /*<<< orphan*/  windres_bfd ;
typedef  scalar_t__ rc_uint_type ;
typedef  int /*<<< orphan*/  rc_res_directory ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 int /*<<< orphan*/  WR_KIND_BFD_BIN_B ; 
 int /*<<< orphan*/  WR_KIND_BFD_BIN_L ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 char const* filename ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/ * resources ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__) ; 
 scalar_t__ target_is_bigendian ; 
 int /*<<< orphan*/ * FUNC10 (char const*,int) ; 

rc_res_directory *
FUNC11 (const char *fn)
{
  rc_uint_type off, flen;
  windres_bfd wrbfd;
  bfd *abfd;
  asection *sec;
  filename = fn;

  flen = (rc_uint_type) FUNC4 (filename);
  if (! flen)
    FUNC3 ("can't open '%s' for input.", filename);
  abfd = FUNC10 (filename, 1);
  sec = FUNC2 (abfd, ".data");
  if (sec == NULL)
    FUNC1 ("bfd_get_section_by_name");
  FUNC7 (&wrbfd, abfd, sec,
		   (target_is_bigendian ? WR_KIND_BFD_BIN_B
					: WR_KIND_BFD_BIN_L));
  off = 0;

  if (! FUNC5 (&wrbfd, flen))
    FUNC8 (&wrbfd, ! target_is_bigendian);

  FUNC9 (&wrbfd, &off, flen);

  while (FUNC6 (&wrbfd, &off, flen))
    ;

  FUNC0 (abfd);

  return resources;
}