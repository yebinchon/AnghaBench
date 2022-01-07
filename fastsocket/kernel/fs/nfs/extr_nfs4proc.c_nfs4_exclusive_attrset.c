
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* attrset; } ;
struct nfs4_opendata {TYPE_1__ o_res; } ;
struct iattr {int ia_valid; } ;


 int ATTR_ATIME ;
 int ATTR_ATIME_SET ;
 int ATTR_MTIME ;
 int ATTR_MTIME_SET ;
 int FATTR4_WORD1_TIME_ACCESS ;
 int FATTR4_WORD1_TIME_MODIFY ;

__attribute__((used)) static inline void nfs4_exclusive_attrset(struct nfs4_opendata *opendata, struct iattr *sattr)
{
 if ((opendata->o_res.attrset[1] & FATTR4_WORD1_TIME_ACCESS) &&
     !(sattr->ia_valid & ATTR_ATIME_SET))
  sattr->ia_valid |= ATTR_ATIME;

 if ((opendata->o_res.attrset[1] & FATTR4_WORD1_TIME_MODIFY) &&
     !(sattr->ia_valid & ATTR_MTIME_SET))
  sattr->ia_valid |= ATTR_MTIME;
}
