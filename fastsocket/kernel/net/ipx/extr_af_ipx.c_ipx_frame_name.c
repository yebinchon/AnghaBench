
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be16 ;







 int ntohs (int ) ;

const char *ipx_frame_name(__be16 frame)
{
 char* rc = "None";

 switch (ntohs(frame)) {
 case 130: rc = "EtherII"; break;
 case 132: rc = "802.2"; break;
 case 129: rc = "SNAP"; break;
 case 131: rc = "802.3"; break;
 case 128: rc = "802.2TR"; break;
 }

 return rc;
}
