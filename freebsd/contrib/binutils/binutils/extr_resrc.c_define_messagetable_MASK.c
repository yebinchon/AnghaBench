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
struct stat {int /*<<< orphan*/  st_size; } ;
struct TYPE_10__ {int /*<<< orphan*/  language; } ;
struct TYPE_7__ {int /*<<< orphan*/ * data; int /*<<< orphan*/  length; } ;
struct TYPE_8__ {TYPE_1__ data; } ;
struct TYPE_9__ {TYPE_4__ res_info; TYPE_2__ u; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ rc_res_resource ;
typedef  TYPE_4__ rc_res_res_info ;
typedef  int /*<<< orphan*/  rc_res_id ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FOPEN_RB ; 
 int /*<<< orphan*/  RES_TYPE_MESSAGETABLE ; 
 int /*<<< orphan*/  RT_MESSAGETABLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,int /*<<< orphan*/ ,char*,char**) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  resources ; 
 scalar_t__ FUNC8 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void
FUNC10 (rc_res_id id, const rc_res_res_info *resinfo,
		     const char *filename)
{
  FILE *e;
  char *real_filename;
  struct stat s;
  bfd_byte *data;
  rc_res_resource *r;

  e = FUNC6 (filename, FOPEN_RB, "messagetable file",
			&real_filename);

  if (FUNC8 (real_filename, &s) < 0)
    FUNC2 (FUNC0("stat failed on bitmap file `%s': %s"), real_filename,
	   FUNC9 (errno));

  data = (bfd_byte *) FUNC7 (s.st_size);

  FUNC5 (e, data, s.st_size, real_filename);

  FUNC3 (e);
  FUNC4 (real_filename);

  r = FUNC1 (&resources, RT_MESSAGETABLE, id,
				resinfo->language, 0);

  r->type = RES_TYPE_MESSAGETABLE;
  r->u.data.length = s.st_size;
  r->u.data.data = data;
  r->res_info = *resinfo;
}