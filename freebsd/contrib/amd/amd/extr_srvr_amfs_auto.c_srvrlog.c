
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fs_type; int fs_host; } ;
typedef TYPE_1__ fserver ;


 int XLOG_INFO ;
 int plog (int ,char*,int ,int ,char*) ;

void
srvrlog(fserver *fs, char *state)
{
  plog(XLOG_INFO, "file server %s, type %s, state %s", fs->fs_host, fs->fs_type, state);
}
