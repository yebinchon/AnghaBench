
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int am_nfs_fh ;


 int memcmp (char*,char*,int) ;

__attribute__((used)) static int
eq_fh(const am_nfs_fh *fh1, const am_nfs_fh *fh2)
{
  return (!memcmp((char *) fh1, (char *) fh2, sizeof(am_nfs_fh)));
}
