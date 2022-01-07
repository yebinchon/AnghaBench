
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;



__attribute__((used)) static int gfs2_uuid_valid(const u8 *uuid)
{
 int i;

 for (i = 0; i < 16; i++) {
  if (uuid[i])
   return 1;
 }
 return 0;
}
