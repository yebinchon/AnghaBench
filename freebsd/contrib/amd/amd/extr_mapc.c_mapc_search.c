
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mnt_map ;


 int MREC_FULL ;
 int mapc_meta_search (int *,char*,char**,int ) ;

int
mapc_search(mnt_map *m, char *key, char **pval)
{
  return mapc_meta_search(m, key, pval, MREC_FULL);
}
