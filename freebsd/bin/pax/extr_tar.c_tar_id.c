
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* name; int chksum; } ;
struct TYPE_3__ {int magic; } ;
typedef TYPE_1__ HD_USTAR ;
typedef TYPE_2__ HD_TAR ;


 int BLKMULT ;
 int OCT ;
 int TMAGIC ;
 scalar_t__ TMAGLEN ;
 scalar_t__ asc_ul (int ,int,int ) ;
 scalar_t__ strncmp (int ,int ,scalar_t__) ;
 scalar_t__ tar_chksm (char*,int) ;

int
tar_id(char *blk, int size)
{
 HD_TAR *hd;
 HD_USTAR *uhd;

 if (size < BLKMULT)
  return(-1);
 hd = (HD_TAR *)blk;
 uhd = (HD_USTAR *)blk;
 if (hd->name[0] == '\0')
  return(-1);
 if (strncmp(uhd->magic, TMAGIC, TMAGLEN - 1) == 0)
  return(-1);
 if (asc_ul(hd->chksum,sizeof(hd->chksum),OCT) != tar_chksm(blk,BLKMULT))
  return(-1);
 return(0);
}
