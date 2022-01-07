
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int fts_info; scalar_t__ fts_level; } ;
typedef TYPE_1__ FTSENT ;


 int FTS_D ;
 int FTS_ERR ;
 int FTS_NS ;
 scalar_t__ FTS_ROOTLEVEL ;
 int f_listdir ;
 int namecmp (TYPE_1__ const* const,TYPE_1__ const* const) ;
 int sortfcn (TYPE_1__ const* const,TYPE_1__ const* const) ;

__attribute__((used)) static int
mastercmp(const FTSENT * const *a, const FTSENT * const *b)
{
 int a_info, b_info;

 a_info = (*a)->fts_info;
 if (a_info == FTS_ERR)
  return (0);
 b_info = (*b)->fts_info;
 if (b_info == FTS_ERR)
  return (0);

 if (a_info == FTS_NS || b_info == FTS_NS)
  return (namecmp(*a, *b));

 if (a_info != b_info &&
     (*a)->fts_level == FTS_ROOTLEVEL && !f_listdir) {
  if (a_info == FTS_D)
   return (1);
  if (b_info == FTS_D)
   return (-1);
 }
 return (sortfcn(*a, *b));
}
