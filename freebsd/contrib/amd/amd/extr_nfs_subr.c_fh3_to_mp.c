
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int am_node ;
typedef int am_nfs_fh3 ;


 int VLOOK_CREATE ;
 int * fh3_to_mp3 (int *,int*,int ) ;

__attribute__((used)) static am_node *
fh3_to_mp(am_nfs_fh3 *fhp)
{
  int dummy;

  return fh3_to_mp3(fhp, &dummy, VLOOK_CREATE);
}
