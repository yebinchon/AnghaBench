
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211s_hdr {int flags; } ;


 int MESH_FLAGS_AE ;



unsigned int ieee80211_get_mesh_hdrlen(struct ieee80211s_hdr *meshhdr)
{
 int ae = meshhdr->flags & MESH_FLAGS_AE;

 switch (ae) {
 default:
 case 0:
  return 6;
 case 129:
  return 12;
 case 128:
  return 18;
 }
}
