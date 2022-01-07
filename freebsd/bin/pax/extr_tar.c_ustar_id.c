
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int chksum; int magic; } ;
typedef TYPE_1__ HD_USTAR ;


 int BLKMULT ;
 int OCT ;
 int TMAGIC ;
 scalar_t__ TMAGLEN ;
 scalar_t__ asc_ul (int ,int,int ) ;
 scalar_t__ strncmp (int ,int ,scalar_t__) ;
 scalar_t__ tar_chksm (char*,int) ;

int
ustar_id(char *blk, int size)
{
 HD_USTAR *hd;

 if (size < BLKMULT)
  return(-1);
 hd = (HD_USTAR *)blk;







 if (hd->name[0] == '\0')
  return(-1);
 if (strncmp(hd->magic, TMAGIC, TMAGLEN - 1) != 0)
  return(-1);
 if (asc_ul(hd->chksum,sizeof(hd->chksum),OCT) != tar_chksm(blk,BLKMULT))
  return(-1);
 return(0);
}
