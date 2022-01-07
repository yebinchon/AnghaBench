
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FTS_SKIP ;
 int * ftent ;
 int fts_set (int ,int *,int ) ;
 int ftsp ;

void
ftree_notsel(void)
{
 if (ftent != ((void*)0))
  (void)fts_set(ftsp, ftent, FTS_SKIP);
}
