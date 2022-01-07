
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_xmit; } ;
struct smb_sb_info {TYPE_1__ opt; } ;



__attribute__((used)) static inline int
smb_get_xmitsize(struct smb_sb_info *server, int overhead)
{
 return server->opt.max_xmit - overhead;
}
