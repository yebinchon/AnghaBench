#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uchar ;
struct normalize_state {int dummy; } ;
struct cset_converter {int dummy; } ;
struct _cpp_strbuf {int dummy; } ;
typedef  int /*<<< orphan*/  cppchar_t ;
struct TYPE_5__ {struct cset_converter narrow_cset_desc; struct cset_converter wide_cset_desc; } ;
typedef  TYPE_1__ cpp_reader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cset_converter,int /*<<< orphan*/ *,int,struct _cpp_strbuf*) ; 
 int /*<<< orphan*/  CPP_DL_ERROR ; 
 struct normalize_state INITIAL_NORMALIZE_STATE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/  const**,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,struct normalize_state*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int errno ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t*) ; 

__attribute__((used)) static const uchar *
FUNC4 (cpp_reader *pfile, const uchar *from, const uchar *limit,
	     struct _cpp_strbuf *tbuf, bool wide)
{
  cppchar_t ucn;
  uchar buf[6];
  uchar *bufp = buf;
  size_t bytesleft = 6;
  int rval;
  struct cset_converter cvt
    = wide ? pfile->wide_cset_desc : pfile->narrow_cset_desc;
  struct normalize_state nst = INITIAL_NORMALIZE_STATE;

  from++;  /* Skip u/U.  */
  ucn = FUNC1 (pfile, &from, limit, 0, &nst);

  rval = FUNC3 (ucn, &bufp, &bytesleft);
  if (rval)
    {
      errno = rval;
      FUNC2 (pfile, CPP_DL_ERROR,
		 "converting UCN to source character set");
    }
  else if (!FUNC0 (cvt, buf, 6 - bytesleft, tbuf))
    FUNC2 (pfile, CPP_DL_ERROR,
	       "converting UCN to execution character set");

  return from;
}