
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int* sb_uuid; } ;
struct gfs2_sbd {TYPE_1__ sd_sb; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int gfs2_uuid_valid (int const*) ;
 int snprintf (char*,int ,char*,int const,int const,int const,int const,int const,int const,int const,int const,int const,int const,int const,int const,int const,int const,int const,int const) ;

__attribute__((used)) static ssize_t uuid_show(struct gfs2_sbd *sdp, char *buf)
{
 const u8 *uuid = sdp->sd_sb.sb_uuid;
 buf[0] = '\0';
 if (!gfs2_uuid_valid(uuid))
  return 0;
 return snprintf(buf, PAGE_SIZE, "%02X%02X%02X%02X-%02X%02X-"
   "%02X%02X-%02X%02X-%02X%02X%02X%02X%02X%02X\n",
   uuid[0], uuid[1], uuid[2], uuid[3], uuid[4], uuid[5],
   uuid[6], uuid[7], uuid[8], uuid[9], uuid[10], uuid[11],
   uuid[12], uuid[13], uuid[14], uuid[15]);
}
