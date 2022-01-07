
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_wstat {unsigned long mode; } ;


 int DT_DIR ;
 int DT_LNK ;
 int DT_REG ;
 unsigned long P9_DMDIR ;
 unsigned long P9_DMSYMLINK ;

__attribute__((used)) static inline int dt_type(struct p9_wstat *mistat)
{
 unsigned long perm = mistat->mode;
 int rettype = DT_REG;

 if (perm & P9_DMDIR)
  rettype = DT_DIR;
 if (perm & P9_DMSYMLINK)
  rettype = DT_LNK;

 return rettype;
}
