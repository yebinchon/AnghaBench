
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct stat {scalar_t__ st_mtime; scalar_t__ st_ctime; int st_mode; } ;
typedef int dirbuf ;
struct TYPE_18__ {scalar_t__ st_mtime; scalar_t__ st_ctime; } ;
struct TYPE_19__ {char* name; int nlen; scalar_t__ type; char* org_name; TYPE_1__ sb; } ;
typedef TYPE_2__ ARCHD ;


 scalar_t__ Dflag ;
 int O_RDONLY ;
 int PAXPATHLEN ;
 scalar_t__ PAX_CTG ;
 scalar_t__ PAX_HLK ;
 scalar_t__ PAX_HRG ;
 scalar_t__ PAX_REG ;
 int SIG_BLOCK ;
 int S_ISDIR (int ) ;
 scalar_t__ Yflag ;
 scalar_t__ Zflag ;
 int ar_close () ;
 scalar_t__ chk_lnk (TYPE_2__*) ;
 int chk_same (TYPE_2__*) ;
 int cp_file (TYPE_2__*,int,int) ;
 int cp_start () ;
 int cross_lnk (TYPE_2__*) ;
 scalar_t__ dir_start () ;
 char* dirptr ;
 int errno ;
 int file_close (TYPE_2__*,int) ;
 int file_creat (TYPE_2__*) ;
 int flcnt ;
 int fputs (char*,int ) ;
 int ftree_chk () ;
 int ftree_notsel () ;
 int ftree_sel (TYPE_2__*) ;
 scalar_t__ ftree_start () ;
 scalar_t__ iflag ;
 int l_strncpy (char*,char*,int) ;
 scalar_t__ lflag ;
 int listf ;
 int lnk_creat (TYPE_2__*) ;
 scalar_t__ lnk_start () ;
 scalar_t__ lstat (char*,struct stat*) ;
 int mod_name (TYPE_2__*) ;
 scalar_t__ name_start () ;
 scalar_t__ next_file (TYPE_2__*) ;
 int node_creat (TYPE_2__*) ;
 int open (char*,int ,int ) ;
 int paxwarn (int,char*,char*) ;
 int proc_dir () ;
 int purg_lnk (TYPE_2__*) ;
 int putc (char,int ) ;
 int rdfile_close (TYPE_2__*,int*) ;
 int s_mask ;
 scalar_t__ sel_chk (TYPE_2__*) ;
 scalar_t__ set_dest (TYPE_2__*,char*,int) ;
 int sigprocmask (int ,int *,int *) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strncpy (char*,char*,int) ;
 int syswarn (int,int ,char*,char*) ;
 scalar_t__ uflag ;
 scalar_t__ vflag ;
 int vfpart ;

void
copy(void)
{
 ARCHD *arcn;
 int res;
 int fddest;
 char *dest_pt;
 int dlen;
 int drem;
 int fdsrc = -1;
 struct stat sb;
 ARCHD archd;
 char dirbuf[PAXPATHLEN+1];

 arcn = &archd;




 dlen = l_strncpy(dirbuf, dirptr, sizeof(dirbuf) - 1);
 dest_pt = dirbuf + dlen;
 if (*(dest_pt-1) != '/') {
  *dest_pt++ = '/';
  ++dlen;
 }
 *dest_pt = '\0';
 drem = PAXPATHLEN - dlen;

 if (stat(dirptr, &sb) < 0) {
  syswarn(1, errno, "Cannot access destination directory %s",
   dirptr);
  return;
 }
 if (!S_ISDIR(sb.st_mode)) {
  paxwarn(1, "Destination is not a directory %s", dirptr);
  return;
 }





 if ((lnk_start() < 0) || (ftree_start() < 0) || (dir_start() < 0))
  return;





 if (iflag && (name_start() < 0))
  return;




 cp_start();




 while (next_file(arcn) == 0) {
  fdsrc = -1;




  if (sel_chk(arcn) != 0) {
   ftree_notsel();
   continue;
  }
  if (uflag || Dflag) {



   if (*(arcn->name) == '/')
    res = 1;
   else
    res = 0;
   if ((arcn->nlen - res) > drem) {
    paxwarn(1, "Destination pathname too long %s",
     arcn->name);
    continue;
   }
   (void)strncpy(dest_pt, arcn->name + res, drem);
   dirbuf[PAXPATHLEN] = '\0';




   res = lstat(dirbuf, &sb);
   *dest_pt = '\0';

       if (res == 0) {
    if (uflag && Dflag) {
     if ((arcn->sb.st_mtime<=sb.st_mtime) &&
             (arcn->sb.st_ctime<=sb.st_ctime))
      continue;
    } else if (Dflag) {
     if (arcn->sb.st_ctime <= sb.st_ctime)
      continue;
    } else if (arcn->sb.st_mtime <= sb.st_mtime)
     continue;
   }
  }






  ftree_sel(arcn);
  if ((chk_lnk(arcn) < 0) || ((res = mod_name(arcn)) < 0))
   break;
  if ((res > 0) || (set_dest(arcn, dirbuf, dlen) < 0)) {



   purg_lnk(arcn);
   continue;
  }





  if ((Yflag || Zflag) && ((lstat(arcn->name, &sb) == 0))) {
   if (Yflag && Zflag) {
    if ((arcn->sb.st_mtime <= sb.st_mtime) &&
        (arcn->sb.st_ctime <= sb.st_ctime))
     continue;
   } else if (Yflag) {
    if (arcn->sb.st_ctime <= sb.st_ctime)
     continue;
   } else if (arcn->sb.st_mtime <= sb.st_mtime)
    continue;
  }

  if (vflag) {
   (void)fputs(arcn->name, listf);
   vfpart = 1;
  }
  ++flcnt;





  if (lflag)
   res = cross_lnk(arcn);
  else
   res = chk_same(arcn);
  if (res <= 0) {
   if (vflag && vfpart) {
    (void)putc('\n', listf);
    vfpart = 0;
   }
   continue;
  }




  if ((arcn->type != PAX_REG) && (arcn->type != PAX_CTG)) {



   if ((arcn->type == PAX_HLK) || (arcn->type == PAX_HRG))
    res = lnk_creat(arcn);
   else
    res = node_creat(arcn);
   if (res < 0)
    purg_lnk(arcn);
   if (vflag && vfpart) {
    (void)putc('\n', listf);
    vfpart = 0;
   }
   continue;
  }





  if ((fdsrc = open(arcn->org_name, O_RDONLY, 0)) < 0) {
   syswarn(1, errno, "Unable to open %s to read",
       arcn->org_name);
   purg_lnk(arcn);
   continue;
  }
  if ((fddest = file_creat(arcn)) < 0) {
   rdfile_close(arcn, &fdsrc);
   purg_lnk(arcn);
   continue;
  }




  cp_file(arcn, fdsrc, fddest);
  file_close(arcn, fddest);
  rdfile_close(arcn, &fdsrc);

  if (vflag && vfpart) {
   (void)putc('\n', listf);
   vfpart = 0;
  }
 }






 (void)sigprocmask(SIG_BLOCK, &s_mask, ((void*)0));
 ar_close();
 proc_dir();
 ftree_chk();
}
