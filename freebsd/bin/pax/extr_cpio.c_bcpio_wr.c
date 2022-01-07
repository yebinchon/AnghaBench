
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
typedef int u_long ;
typedef int time_t ;
typedef int off_t ;
typedef scalar_t__ nlink_t ;
typedef scalar_t__ mode_t ;
typedef scalar_t__ ino_t ;
typedef scalar_t__ gid_t ;
typedef scalar_t__ dev_t ;
struct TYPE_6__ {scalar_t__ st_rdev; int st_size; int st_dev; int st_ino; int st_mode; int st_uid; int st_gid; int st_nlink; int st_mtime; } ;
struct TYPE_8__ {int type; long pad; int ln_nlen; int nlen; char* name; char* ln_name; int org_name; TYPE_1__ sb; } ;
struct TYPE_7__ {char* h_filesize_1; char* h_filesize_2; char* h_dev; char* h_ino; char* h_mode; char* h_uid; char* h_gid; char* h_nlink; char* h_rdev; char* h_mtime_1; char* h_mtime_2; char* h_namesize; void** h_magic; } ;
typedef TYPE_2__ HD_BCPIO ;
typedef TYPE_3__ ARCHD ;


 scalar_t__ BCPIO_MASK ;
 long BCPIO_PAD (int) ;
 void* CHR_WR_0 (int) ;
 void* CHR_WR_1 (int) ;
 void* CHR_WR_2 (int) ;
 void* CHR_WR_3 (int) ;
 int MAGIC ;
 int PAX_BLK ;
 int PAX_CHR ;




 scalar_t__ SHRT_EXT (char*) ;
 scalar_t__ map_dev (TYPE_3__*,int ,int ) ;
 int paxwarn (int,char*,int ) ;
 scalar_t__ wr_rdbuf (char*,int) ;
 scalar_t__ wr_skip (int) ;

int
bcpio_wr(ARCHD *arcn)
{
 HD_BCPIO *hd;
 int nsz;
 HD_BCPIO hdblk;
 off_t t_offt;
 int t_int;
 time_t t_timet;





 if (map_dev(arcn, (u_long)BCPIO_MASK, (u_long)BCPIO_MASK) < 0)
  return(-1);

 if ((arcn->type != PAX_BLK) && (arcn->type != PAX_CHR))
  arcn->sb.st_rdev = 0;
 hd = &hdblk;

 switch(arcn->type) {
 case 131:
 case 129:
 case 130:




  arcn->pad = BCPIO_PAD(arcn->sb.st_size);
  hd->h_filesize_1[0] = CHR_WR_0(arcn->sb.st_size);
  hd->h_filesize_1[1] = CHR_WR_1(arcn->sb.st_size);
  hd->h_filesize_2[0] = CHR_WR_2(arcn->sb.st_size);
  hd->h_filesize_2[1] = CHR_WR_3(arcn->sb.st_size);
  t_offt = (off_t)(SHRT_EXT(hd->h_filesize_1));
  t_offt = (t_offt<<16) | ((off_t)(SHRT_EXT(hd->h_filesize_2)));
  if (arcn->sb.st_size != t_offt) {
   paxwarn(1,"File is too large for bcpio format %s",
       arcn->org_name);
   return(1);
  }
  break;
 case 128:




  arcn->pad = 0L;
  hd->h_filesize_1[0] = CHR_WR_0(arcn->ln_nlen);
  hd->h_filesize_1[1] = CHR_WR_1(arcn->ln_nlen);
  hd->h_filesize_2[0] = CHR_WR_2(arcn->ln_nlen);
  hd->h_filesize_2[1] = CHR_WR_3(arcn->ln_nlen);
  t_int = (int)(SHRT_EXT(hd->h_filesize_1));
  t_int = (t_int << 16) | ((int)(SHRT_EXT(hd->h_filesize_2)));
  if (arcn->ln_nlen != t_int)
   goto out;
  break;
 default:



  arcn->pad = 0L;
  hd->h_filesize_1[0] = (char)0;
  hd->h_filesize_1[1] = (char)0;
  hd->h_filesize_2[0] = (char)0;
  hd->h_filesize_2[1] = (char)0;
  break;
 }




 hd->h_magic[0] = CHR_WR_2(MAGIC);
 hd->h_magic[1] = CHR_WR_3(MAGIC);
 hd->h_dev[0] = CHR_WR_2(arcn->sb.st_dev);
 hd->h_dev[1] = CHR_WR_3(arcn->sb.st_dev);
 if (arcn->sb.st_dev != (dev_t)(SHRT_EXT(hd->h_dev)))
  goto out;
 hd->h_ino[0] = CHR_WR_2(arcn->sb.st_ino);
 hd->h_ino[1] = CHR_WR_3(arcn->sb.st_ino);
 if (arcn->sb.st_ino != (ino_t)(SHRT_EXT(hd->h_ino)))
  goto out;
 hd->h_mode[0] = CHR_WR_2(arcn->sb.st_mode);
 hd->h_mode[1] = CHR_WR_3(arcn->sb.st_mode);
 if (arcn->sb.st_mode != (mode_t)(SHRT_EXT(hd->h_mode)))
  goto out;
 hd->h_uid[0] = CHR_WR_2(arcn->sb.st_uid);
 hd->h_uid[1] = CHR_WR_3(arcn->sb.st_uid);
 if (arcn->sb.st_uid != (uid_t)(SHRT_EXT(hd->h_uid)))
  goto out;
 hd->h_gid[0] = CHR_WR_2(arcn->sb.st_gid);
 hd->h_gid[1] = CHR_WR_3(arcn->sb.st_gid);
 if (arcn->sb.st_gid != (gid_t)(SHRT_EXT(hd->h_gid)))
  goto out;
 hd->h_nlink[0] = CHR_WR_2(arcn->sb.st_nlink);
 hd->h_nlink[1] = CHR_WR_3(arcn->sb.st_nlink);
 if (arcn->sb.st_nlink != (nlink_t)(SHRT_EXT(hd->h_nlink)))
  goto out;
 hd->h_rdev[0] = CHR_WR_2(arcn->sb.st_rdev);
 hd->h_rdev[1] = CHR_WR_3(arcn->sb.st_rdev);
 if (arcn->sb.st_rdev != (dev_t)(SHRT_EXT(hd->h_rdev)))
  goto out;
 hd->h_mtime_1[0] = CHR_WR_0(arcn->sb.st_mtime);
 hd->h_mtime_1[1] = CHR_WR_1(arcn->sb.st_mtime);
 hd->h_mtime_2[0] = CHR_WR_2(arcn->sb.st_mtime);
 hd->h_mtime_2[1] = CHR_WR_3(arcn->sb.st_mtime);
 t_timet = (time_t)(SHRT_EXT(hd->h_mtime_1));
 t_timet = (t_timet << 16) | ((time_t)(SHRT_EXT(hd->h_mtime_2)));
 if (arcn->sb.st_mtime != t_timet)
  goto out;
 nsz = arcn->nlen + 1;
 hd->h_namesize[0] = CHR_WR_2(nsz);
 hd->h_namesize[1] = CHR_WR_3(nsz);
 if (nsz != (int)(SHRT_EXT(hd->h_namesize)))
  goto out;




 if ((wr_rdbuf((char *)&hdblk, (int)sizeof(HD_BCPIO)) < 0) ||
     (wr_rdbuf(arcn->name, nsz) < 0) ||
     (wr_skip((off_t)(BCPIO_PAD(sizeof(HD_BCPIO) + nsz))) < 0)) {
  paxwarn(1, "Could not write bcpio header for %s", arcn->org_name);
  return(-1);
 }




 if ((arcn->type == 131) || (arcn->type == 129) ||
     (arcn->type == 130))
  return(0);




 if (arcn->type != 128)
  return(1);




 if ((wr_rdbuf(arcn->ln_name, arcn->ln_nlen) < 0) ||
     (wr_skip((off_t)(BCPIO_PAD(arcn->ln_nlen))) < 0)) {
  paxwarn(1,"Could not write bcpio link name for %s",arcn->org_name);
  return(-1);
 }
 return(1);

    out:



 paxwarn(1,"Bcpio header field is too small for file %s", arcn->org_name);
 return(1);
}
