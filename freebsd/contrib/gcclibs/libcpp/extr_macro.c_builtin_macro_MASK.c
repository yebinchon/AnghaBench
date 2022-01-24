#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uchar ;
struct TYPE_20__ {scalar_t__ in_directive; } ;
struct TYPE_22__ {TYPE_3__* buffer; int /*<<< orphan*/  cur_token; TYPE_2__ state; } ;
typedef  TYPE_4__ cpp_reader ;
struct TYPE_19__ {scalar_t__ builtin; } ;
struct TYPE_23__ {TYPE_1__ value; } ;
typedef  TYPE_5__ cpp_hashnode ;
struct TYPE_21__ {scalar_t__ cur; scalar_t__ rlimit; } ;

/* Variables and functions */
 scalar_t__ BT_PRAGMA ; 
 int /*<<< orphan*/  CPP_DL_ICE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 scalar_t__ FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/  const*,size_t) ; 
 size_t FUNC12 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int
FUNC13 (cpp_reader *pfile, cpp_hashnode *node)
{
  const uchar *buf;
  size_t len;
  char *nbuf;

  if (node->value.builtin == BT_PRAGMA)
    {
      /* Don't interpret _Pragma within directives.  The standard is
         not clear on this, but to me this makes most sense.  */
      if (pfile->state.in_directive)
	return 0;

      FUNC3 (pfile);
      return 1;
    }

  buf = FUNC1 (pfile, node);
  len = FUNC12 (buf);
  nbuf = (char *) FUNC8 (len + 1);
  FUNC11 (nbuf, buf, len);
  nbuf[len]='\n';

  FUNC10 (pfile, (uchar *) nbuf, len, /* from_stage3 */ true);
  FUNC2 (pfile);

  /* Set pfile->cur_token as required by _cpp_lex_direct.  */
  pfile->cur_token = FUNC7 (pfile);
  FUNC6 (pfile, NULL, FUNC4 (pfile), 1);
  if (pfile->buffer->cur != pfile->buffer->rlimit)
    FUNC9 (pfile, CPP_DL_ICE, "invalid built-in macro \"%s\"",
	       FUNC0 (node));
  FUNC5 (pfile);

  return 1;
}