
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
typedef void* time_t ;
typedef void* off_t ;
typedef scalar_t__ mode_t ;
typedef scalar_t__ gid_t ;
struct TYPE_5__ {int st_nlink; void* st_size; scalar_t__ st_mode; void* st_mtime; void* st_atime; void* st_ctime; scalar_t__ st_gid; scalar_t__ st_uid; } ;
struct TYPE_7__ {char* org_name; char* name; size_t nlen; size_t ln_nlen; char* ln_name; TYPE_1__ sb; void* skip; scalar_t__ pad; void* type; int * pat; } ;
struct TYPE_6__ {int linkflag; int linkname; int mtime; int size; int gid; int uid; int mode; int name; } ;
typedef TYPE_2__ HD_TAR ;
typedef TYPE_3__ ARCHD ;



 int BLKMULT ;


 scalar_t__ MIN (int,int) ;
 int OCT ;
 void* PAX_DIR ;
 void* PAX_HLK ;
 void* PAX_REG ;
 void* PAX_SLK ;


 scalar_t__ S_IFDIR ;
 scalar_t__ S_IFLNK ;
 scalar_t__ S_IFREG ;
 scalar_t__ TAR_PAD (void*) ;
 int asc_ul (int ,int,int ) ;
 scalar_t__ asc_uqd (int ,int,int ) ;
 void* l_strncpy (char*,int ,scalar_t__) ;
 scalar_t__ tar_id (char*,int ) ;

int
tar_rd(ARCHD *arcn, char *buf)
{
 HD_TAR *hd;
 char *pt;




 if (tar_id(buf, BLKMULT) < 0)
  return(-1);
 arcn->org_name = arcn->name;
 arcn->sb.st_nlink = 1;
 arcn->pat = ((void*)0);




 hd = (HD_TAR *)buf;





 arcn->nlen = l_strncpy(arcn->name, hd->name,
     MIN(sizeof(hd->name), sizeof(arcn->name)) - 1);
 arcn->name[arcn->nlen] = '\0';
 arcn->sb.st_mode = (mode_t)(asc_ul(hd->mode,sizeof(hd->mode),OCT) &
     0xfff);
 arcn->sb.st_uid = (uid_t)asc_ul(hd->uid, sizeof(hd->uid), OCT);
 arcn->sb.st_gid = (gid_t)asc_ul(hd->gid, sizeof(hd->gid), OCT);




 arcn->sb.st_size = (off_t)asc_uqd(hd->size, sizeof(hd->size), OCT);
 arcn->sb.st_mtime = (time_t)asc_uqd(hd->mtime, sizeof(hd->mtime), OCT);

 arcn->sb.st_ctime = arcn->sb.st_atime = arcn->sb.st_mtime;





 pt = &(arcn->name[arcn->nlen - 1]);
 arcn->pad = 0;
 arcn->skip = 0;
 switch(hd->linkflag) {
 case 128:




  arcn->type = PAX_SLK;
  arcn->ln_nlen = l_strncpy(arcn->ln_name, hd->linkname,
      MIN(sizeof(hd->linkname), sizeof(arcn->ln_name)) - 1);
  arcn->ln_name[arcn->ln_nlen] = '\0';
  arcn->sb.st_mode |= S_IFLNK;
  break;
 case 130:




  arcn->type = PAX_HLK;
  arcn->sb.st_nlink = 2;
  arcn->ln_nlen = l_strncpy(arcn->ln_name, hd->linkname,
      MIN(sizeof(hd->linkname), sizeof(arcn->ln_name)) - 1);
  arcn->ln_name[arcn->ln_nlen] = '\0';





  arcn->sb.st_mode |= S_IFREG;
  break;
 case 131:



  arcn->type = PAX_DIR;
  arcn->sb.st_mode |= S_IFDIR;
  arcn->sb.st_nlink = 2;
  arcn->ln_name[0] = '\0';
  arcn->ln_nlen = 0;
  break;
 case 132:
 case 129:
 default:



  arcn->ln_name[0] = '\0';
  arcn->ln_nlen = 0;
  if (*pt == '/') {



   arcn->type = PAX_DIR;
   arcn->sb.st_mode |= S_IFDIR;
   arcn->sb.st_nlink = 2;
  } else {





   arcn->type = PAX_REG;
   arcn->sb.st_mode |= S_IFREG;
   arcn->pad = TAR_PAD(arcn->sb.st_size);
   arcn->skip = arcn->sb.st_size;
  }
  break;
 }




 if (*pt == '/') {
  *pt = '\0';
  --arcn->nlen;
 }
 return(0);
}
