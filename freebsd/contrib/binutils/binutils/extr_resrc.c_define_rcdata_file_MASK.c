#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct stat {int st_size; } ;
typedef  int /*<<< orphan*/  rc_res_res_info ;
typedef  int /*<<< orphan*/  rc_res_id ;
struct TYPE_5__ {int length; int /*<<< orphan*/ * data; } ;
struct TYPE_6__ {TYPE_1__ buffer; } ;
struct TYPE_7__ {TYPE_2__ u; int /*<<< orphan*/  type; int /*<<< orphan*/ * next; } ;
typedef  TYPE_3__ rc_rcdata_item ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FOPEN_RB ; 
 int /*<<< orphan*/  RCDATA_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,TYPE_3__*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,int /*<<< orphan*/ ,char*,char**) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void
FUNC10 (rc_res_id id, const rc_res_res_info *resinfo,
		    const char *filename)
{
  rc_rcdata_item *ri;
  FILE *e;
  char *real_filename;
  struct stat s;
  bfd_byte *data;

  e = FUNC6 (filename, FOPEN_RB, "file", &real_filename);


  if (FUNC8 (real_filename, &s) < 0)
    FUNC2 (FUNC0("stat failed on file `%s': %s"), real_filename,
	   FUNC9 (errno));

  data = (bfd_byte *) FUNC7 (s.st_size);

  FUNC5 (e, data, s.st_size, real_filename);

  FUNC3 (e);
  FUNC4 (real_filename);

  ri = (rc_rcdata_item *) FUNC7 (sizeof (rc_rcdata_item));
  ri->next = NULL;
  ri->type = RCDATA_BUFFER;
  ri->u.buffer.length = s.st_size;
  ri->u.buffer.data = data;

  FUNC1 (id, resinfo, ri);
}