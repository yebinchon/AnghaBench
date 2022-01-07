
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uid_t ;
typedef void* time_t ;
typedef void* off_t ;
typedef scalar_t__ mode_t ;
typedef int gid_t ;
typedef scalar_t__ dev_t ;
struct TYPE_5__ {int st_nlink; scalar_t__ st_mode; void* st_size; scalar_t__ st_rdev; int st_uid; int st_gid; void* st_mtime; void* st_atime; void* st_ctime; } ;
struct TYPE_7__ {char* org_name; char* name; int nlen; char* ln_name; int ln_nlen; TYPE_1__ sb; void* skip; scalar_t__ pad; int type; int * pat; } ;
struct TYPE_6__ {char* prefix; char* name; char* gname; char* uname; int typeflag; char* linkname; int devminor; int devmajor; int uid; int gid; int mtime; int size; int mode; } ;
typedef TYPE_2__ HD_USTAR ;
typedef TYPE_3__ ARCHD ;



 int BLKMULT ;






 int MIN (int,int) ;
 int OCT ;
 int PAX_BLK ;
 int PAX_CHR ;
 int PAX_DIR ;
 int PAX_FIF ;
 int PAX_HLK ;
 int PAX_REG ;
 int PAX_SLK ;


 scalar_t__ S_IFBLK ;
 scalar_t__ S_IFCHR ;
 scalar_t__ S_IFDIR ;
 scalar_t__ S_IFIFO ;
 scalar_t__ S_IFLNK ;
 scalar_t__ S_IFREG ;
 scalar_t__ TAR_PAD (void*) ;
 scalar_t__ TODEV (scalar_t__,scalar_t__) ;
 int asc_ul (int ,int,int ) ;
 scalar_t__ asc_uqd (int ,int,int ) ;
 scalar_t__ gid_name (char*,int *) ;
 int l_strncpy (char*,char*,int ) ;
 scalar_t__ uid_name (char*,int *) ;
 scalar_t__ ustar_id (char*,int ) ;

int
ustar_rd(ARCHD *arcn, char *buf)
{
 HD_USTAR *hd;
 char *dest;
 int cnt = 0;
 dev_t devmajor;
 dev_t devminor;




 if (ustar_id(buf, BLKMULT) < 0)
  return(-1);
 arcn->org_name = arcn->name;
 arcn->sb.st_nlink = 1;
 arcn->pat = ((void*)0);
 arcn->nlen = 0;
 hd = (HD_USTAR *)buf;





 dest = arcn->name;
 if (*(hd->prefix) != '\0') {
  cnt = l_strncpy(dest, hd->prefix,
      MIN(sizeof(hd->prefix), sizeof(arcn->name) - 2));
  dest += cnt;
  *dest++ = '/';
  cnt++;
 }





 arcn->nlen = cnt + l_strncpy(dest, hd->name,
     MIN(sizeof(hd->name), sizeof(arcn->name) - cnt - 1));
 arcn->name[arcn->nlen] = '\0';





 arcn->sb.st_mode = (mode_t)(asc_ul(hd->mode, sizeof(hd->mode), OCT) &
     0xfff);




 arcn->sb.st_size = (off_t)asc_uqd(hd->size, sizeof(hd->size), OCT);
 arcn->sb.st_mtime = (time_t)asc_uqd(hd->mtime, sizeof(hd->mtime), OCT);

 arcn->sb.st_ctime = arcn->sb.st_atime = arcn->sb.st_mtime;







 hd->gname[sizeof(hd->gname) - 1] = '\0';
 if (gid_name(hd->gname, &(arcn->sb.st_gid)) < 0)
  arcn->sb.st_gid = (gid_t)asc_ul(hd->gid, sizeof(hd->gid), OCT);
 hd->uname[sizeof(hd->uname) - 1] = '\0';
 if (uid_name(hd->uname, &(arcn->sb.st_uid)) < 0)
  arcn->sb.st_uid = (uid_t)asc_ul(hd->uid, sizeof(hd->uid), OCT);




 arcn->ln_name[0] = '\0';
 arcn->ln_nlen = 0;
 arcn->pad = 0;
 arcn->skip = 0;
 arcn->sb.st_rdev = (dev_t)0;




 switch(hd->typeflag) {
 case 131:
  arcn->type = PAX_FIF;
  arcn->sb.st_mode |= S_IFIFO;
  break;
 case 132:
  arcn->type = PAX_DIR;
  arcn->sb.st_mode |= S_IFDIR;
  arcn->sb.st_nlink = 2;






  if (arcn->name[arcn->nlen - 1] == '/')
   arcn->name[--arcn->nlen] = '\0';
  break;
 case 135:
 case 134:



  if (hd->typeflag == 135) {
   arcn->type = PAX_BLK;
   arcn->sb.st_mode |= S_IFBLK;
  } else {
   arcn->type = PAX_CHR;
   arcn->sb.st_mode |= S_IFCHR;
  }
  devmajor = (dev_t)asc_ul(hd->devmajor,sizeof(hd->devmajor),OCT);
  devminor = (dev_t)asc_ul(hd->devminor,sizeof(hd->devminor),OCT);
  arcn->sb.st_rdev = TODEV(devmajor, devminor);
  break;
 case 128:
 case 130:
  if (hd->typeflag == 128) {
   arcn->type = PAX_SLK;
   arcn->sb.st_mode |= S_IFLNK;
  } else {
   arcn->type = PAX_HLK;



   arcn->sb.st_mode |= S_IFREG;
   arcn->sb.st_nlink = 2;
  }



  arcn->ln_nlen = l_strncpy(arcn->ln_name, hd->linkname,
      MIN(sizeof(hd->linkname), sizeof(arcn->ln_name) - 1));
  arcn->ln_name[arcn->ln_nlen] = '\0';
  break;
 case 133:
 case 136:
 case 129:
 default:




  arcn->type = PAX_REG;
  arcn->pad = TAR_PAD(arcn->sb.st_size);
  arcn->skip = arcn->sb.st_size;
  arcn->sb.st_mode |= S_IFREG;
  break;
 }
 return(0);
}
