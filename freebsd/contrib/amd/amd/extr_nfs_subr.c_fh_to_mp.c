
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int am_node ;
typedef int am_nfs_fh ;


 int VLOOK_CREATE ;
 int * fh_to_mp3 (int *,int*,int ) ;

__attribute__((used)) static am_node *
fh_to_mp(am_nfs_fh *fhp)
{
  int dummy;

  return fh_to_mp3(fhp, &dummy, VLOOK_CREATE);
}
