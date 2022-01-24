#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct stat {int st_size; } ;
struct TYPE_13__ {int /*<<< orphan*/  language; } ;
struct TYPE_10__ {int length; int* data; } ;
struct TYPE_11__ {TYPE_1__ data; } ;
struct TYPE_12__ {TYPE_4__ res_info; TYPE_2__ u; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ rc_res_resource ;
typedef  TYPE_4__ rc_res_res_info ;
typedef  int /*<<< orphan*/  rc_res_id ;
struct TYPE_14__ {long length; int* data; struct TYPE_14__* next; scalar_t__ index; } ;
typedef  TYPE_5__ rc_fontdir ;
typedef  int bfd_byte ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FOPEN_RB ; 
 int /*<<< orphan*/  RES_TYPE_FONT ; 
 int /*<<< orphan*/  RT_FONT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_5__* fontdirs ; 
 TYPE_4__ fontdirs_resinfo ; 
 scalar_t__ fonts ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,int) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,int /*<<< orphan*/ ,char*,char**) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  resources ; 
 scalar_t__ FUNC9 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 long FUNC12 (char const*) ; 

void
FUNC13 (rc_res_id id, const rc_res_res_info *resinfo,
	     const char *filename)
{
  FILE *e;
  char *real_filename;
  struct stat s;
  bfd_byte *data;
  rc_res_resource *r;
  long offset;
  long fontdatalength;
  bfd_byte *fontdata;
  rc_fontdir *fd;
  const char *device, *face;
  rc_fontdir **pp;

  e = FUNC7 (filename, FOPEN_RB, "font file", &real_filename);

  if (FUNC9 (real_filename, &s) < 0)
    FUNC2 (FUNC0("stat failed on font file `%s': %s"), real_filename,
	   FUNC11 (errno));

  data = (bfd_byte *) FUNC8 (s.st_size);

  FUNC5 (e, data, s.st_size, real_filename);

  FUNC3 (e);
  FUNC4 (real_filename);

  r = FUNC1 (&resources, RT_FONT, id,
				resinfo->language, 0);

  r->type = RES_TYPE_FONT;
  r->u.data.length = s.st_size;
  r->u.data.data = data;
  r->res_info = *resinfo;

  /* For each font resource, we must add an entry in the FONTDIR
     resource.  The FONTDIR resource includes some strings in the font
     file.  To find them, we have to do some magic on the data we have
     read.  */

  offset = ((((((data[47] << 8)
		| data[46]) << 8)
	      | data[45]) << 8)
	    | data[44]);
  if (offset > 0 && offset < s.st_size)
    device = (char *) data + offset;
  else
    device = "";

  offset = ((((((data[51] << 8)
		| data[50]) << 8)
	      | data[49]) << 8)
	    | data[48]);
  if (offset > 0 && offset < s.st_size)
    face = (char *) data + offset;
  else
    face = "";

  ++fonts;

  fontdatalength = 58 + FUNC12 (device) + FUNC12 (face);
  fontdata = (bfd_byte *) FUNC8 (fontdatalength);
  FUNC6 (fontdata, data, 56);
  FUNC10 ((char *) fontdata + 56, device);
  FUNC10 ((char *) fontdata + 57 + FUNC12 (device), face);

  fd = (rc_fontdir *) FUNC8 (sizeof (rc_fontdir));
  fd->next = NULL;
  fd->index = fonts;
  fd->length = fontdatalength;
  fd->data = fontdata;

  for (pp = &fontdirs; *pp != NULL; pp = &(*pp)->next)
    ;
  *pp = fd;

  /* For the single fontdirs resource, we always use the resource
     information of the last font.  I don't know what else to do.  */
  fontdirs_resinfo = *resinfo;
}