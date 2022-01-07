
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_2__ {int serverzone; } ;
struct smb_sb_info {TYPE_1__ opt; } ;



__attribute__((used)) static time_t
local2utc(struct smb_sb_info *server, time_t time)
{
 return time + server->opt.serverzone*60;
}
