#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct stat {scalar_t__ st_size; } ;
typedef  scalar_t__ rc_uint_type ;
struct TYPE_10__ {int /*<<< orphan*/  language; } ;
struct TYPE_7__ {int /*<<< orphan*/ * data; scalar_t__ length; } ;
struct TYPE_8__ {TYPE_1__ data; } ;
struct TYPE_9__ {TYPE_4__ res_info; TYPE_2__ u; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ rc_res_resource ;
typedef  TYPE_4__ rc_res_res_info ;
typedef  int /*<<< orphan*/  rc_res_id ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ BITMAP_SKIP ; 
 int /*<<< orphan*/  FOPEN_RB ; 
 int /*<<< orphan*/  RES_TYPE_BITMAP ; 
 int /*<<< orphan*/  RT_BITMAP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,int /*<<< orphan*/ ,char*,char**) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  resources ; 
 scalar_t__ FUNC9 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void
FUNC11 (rc_res_id id, const rc_res_res_info *resinfo,
	       const char *filename)
{
  FILE *e;
  char *real_filename;
  struct stat s;
  bfd_byte *data;
  rc_uint_type i;
  rc_res_resource *r;

  e = FUNC7 (filename, FOPEN_RB, "bitmap file", &real_filename);

  if (FUNC9 (real_filename, &s) < 0)
    FUNC2 (FUNC0("stat failed on bitmap file `%s': %s"), real_filename,
	   FUNC10 (errno));

  data = (bfd_byte *) FUNC8 (s.st_size - BITMAP_SKIP);

  for (i = 0; i < BITMAP_SKIP; i++)
    FUNC6 (e);

  FUNC5 (e, data, s.st_size - BITMAP_SKIP, real_filename);

  FUNC3 (e);
  FUNC4 (real_filename);

  r = FUNC1 (&resources, RT_BITMAP, id,
				resinfo->language, 0);

  r->type = RES_TYPE_BITMAP;
  r->u.data.length = s.st_size - BITMAP_SKIP;
  r->u.data.data = data;
  r->res_info = *resinfo;
}