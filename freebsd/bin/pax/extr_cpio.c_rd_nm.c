
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; } ;
typedef TYPE_1__ ARCHD ;


 int paxwarn (int,char*,...) ;
 int rd_wrbuf (char*,int) ;

__attribute__((used)) static int
rd_nm(ARCHD *arcn, int nsz)
{



 if ((nsz == 0) || (nsz > (int)sizeof(arcn->name))) {
  paxwarn(1, "Cpio file name length %d is out of range", nsz);
  return(-1);
 }




 if ((rd_wrbuf(arcn->name,nsz) != nsz) || (arcn->name[nsz-1] != '\0') ||
     (arcn->name[0] == '\0')) {
  paxwarn(1, "Cpio file name in header is corrupted");
  return(-1);
 }
 return(0);
}
