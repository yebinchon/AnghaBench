
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int st_mode; scalar_t__ st_size; } ;
struct TYPE_6__ {TYPE_1__ sb; scalar_t__ skip; int type; int name; int org_name; int * pat; } ;
typedef TYPE_2__ ARCHD ;


 int C_IFMT ;
 int PAX_BLK ;
 int PAX_CHR ;
 int PAX_DIR ;
 int PAX_FIF ;
 int PAX_REG ;
 int PAX_SCK ;
 int PAX_SLK ;
 scalar_t__ chk_lnk (TYPE_2__*) ;

__attribute__((used)) static int
com_rd(ARCHD *arcn)
{
 arcn->skip = 0;
 arcn->pat = ((void*)0);
 arcn->org_name = arcn->name;
 switch(arcn->sb.st_mode & C_IFMT) {
 case 131:
  arcn->type = PAX_FIF;
  break;
 case 132:
  arcn->type = PAX_DIR;
  break;
 case 135:
  arcn->type = PAX_BLK;
  break;
 case 134:
  arcn->type = PAX_CHR;
  break;
 case 130:
  arcn->type = PAX_SLK;
  break;
 case 129:
  arcn->type = PAX_SCK;
  break;
 case 133:
 case 128:
 default:




  arcn->sb.st_mode = (arcn->sb.st_mode & 0xfff) | 128;
  arcn->type = PAX_REG;
  arcn->skip = arcn->sb.st_size;
  break;
 }
 if (chk_lnk(arcn) < 0)
  return(-1);
 return(0);
}
