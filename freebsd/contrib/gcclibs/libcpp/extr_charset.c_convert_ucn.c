
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uchar ;
struct normalize_state {int dummy; } ;
struct cset_converter {int dummy; } ;
struct _cpp_strbuf {int dummy; } ;
typedef int cppchar_t ;
struct TYPE_5__ {struct cset_converter narrow_cset_desc; struct cset_converter wide_cset_desc; } ;
typedef TYPE_1__ cpp_reader ;


 int APPLY_CONVERSION (struct cset_converter,int *,int,struct _cpp_strbuf*) ;
 int CPP_DL_ERROR ;
 struct normalize_state INITIAL_NORMALIZE_STATE ;
 int _cpp_valid_ucn (TYPE_1__*,int const**,int const*,int ,struct normalize_state*) ;
 int cpp_errno (TYPE_1__*,int ,char*) ;
 int errno ;
 int one_cppchar_to_utf8 (int ,int **,size_t*) ;

__attribute__((used)) static const uchar *
convert_ucn (cpp_reader *pfile, const uchar *from, const uchar *limit,
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

  from++;
  ucn = _cpp_valid_ucn (pfile, &from, limit, 0, &nst);

  rval = one_cppchar_to_utf8 (ucn, &bufp, &bytesleft);
  if (rval)
    {
      errno = rval;
      cpp_errno (pfile, CPP_DL_ERROR,
   "converting UCN to source character set");
    }
  else if (!APPLY_CONVERSION (cvt, buf, 6 - bytesleft, tbuf))
    cpp_errno (pfile, CPP_DL_ERROR,
        "converting UCN to execution character set");

  return from;
}
