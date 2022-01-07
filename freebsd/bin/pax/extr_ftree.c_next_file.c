
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_6__ {int st_mode; scalar_t__ st_size; int st_atime; int st_mtime; int st_ino; int st_dev; } ;
struct TYPE_8__ {int fts_info; int fts_path; TYPE_1__* fts_statp; TYPE_1__ fts_statb; int fts_errno; } ;
struct TYPE_7__ {int ln_nlen; char* ln_name; size_t nlen; char* name; int org_name; int type; TYPE_1__ sb; scalar_t__ skip; scalar_t__ pad; } ;
typedef TYPE_2__ ARCHD ;
 int PAXPATHLEN ;
 int PAX_BLK ;
 int PAX_CHR ;
 int PAX_DIR ;
 int PAX_FIF ;
 int PAX_REG ;
 int PAX_SCK ;
 int PAX_SLK ;





 int S_IFMT ;


 int add_atdir (int ,int ,int ,int ,int ) ;
 int errno ;
 TYPE_4__* ftent ;
 scalar_t__ ftree_arg () ;
 scalar_t__ ftree_skip ;
 TYPE_4__* fts_read (int ) ;
 int ftsp ;
 int get_atdir (int ,int ,int *,int *) ;
 size_t l_strncpy (char*,int ,int) ;
 int paxwarn (int,char*,int ) ;
 int readlink (int ,char*,int ) ;
 int set_ftime (int ,int ,int ,int) ;
 int syswarn (int,int ,char*,...) ;
 int tflag ;

int
next_file(ARCHD *arcn)
{
 int cnt;
 time_t atime;
 time_t mtime;







 if (ftree_skip) {



  ftree_skip = 0;
  if (ftree_arg() < 0)
   return(-1);
 }




 for(;;) {
  if ((ftent = fts_read(ftsp)) == ((void*)0)) {




   if (ftree_arg() < 0)
    return(-1);
   continue;
  }




  switch(ftent->fts_info) {
  case 145:
  case 143:
  case 139:
  case 136:
  case 135:



   break;
  case 141:
   if (!tflag || (get_atdir(ftent->fts_statp->st_dev,
       ftent->fts_statp->st_ino, &mtime, &atime) < 0))

    continue;
   set_ftime(ftent->fts_path, mtime, atime, 1);
   continue;
  case 144:



   paxwarn(1,"File system cycle found at %s",ftent->fts_path);
   continue;
  case 142:



   syswarn(1, ftent->fts_errno,

       "Unable to read directory %s", ftent->fts_path);
   continue;
  case 140:



   syswarn(1, ftent->fts_errno,

       "File system traversal error");
   continue;
  case 138:
  case 137:



   syswarn(1, ftent->fts_errno,

       "Unable to access %s", ftent->fts_path);
   continue;
  }





  arcn->skip = 0;
  arcn->pad = 0;
  arcn->ln_nlen = 0;
  arcn->ln_name[0] = '\0';



  arcn->sb = *(ftent->fts_statp);
  switch(S_IFMT & arcn->sb.st_mode) {
  case 132:
   arcn->type = PAX_DIR;
   if (!tflag)
    break;
   add_atdir(ftent->fts_path, arcn->sb.st_dev,
       arcn->sb.st_ino, arcn->sb.st_mtime,
       arcn->sb.st_atime);
   break;
  case 133:
   arcn->type = PAX_CHR;
   break;
  case 134:
   arcn->type = PAX_BLK;
   break;
  case 129:






   arcn->type = PAX_REG;
   arcn->skip = arcn->sb.st_size;
   break;
  case 130:
   arcn->type = PAX_SLK;



   if ((cnt = readlink(ftent->fts_path, arcn->ln_name,
       PAXPATHLEN - 1)) < 0) {
    syswarn(1, errno, "Unable to read symlink %s",
        ftent->fts_path);
    continue;
   }




   arcn->ln_name[cnt] = '\0';
   arcn->ln_nlen = cnt;
   break;
  case 128:





   arcn->type = PAX_SCK;
   break;
  case 131:
   arcn->type = PAX_FIF;
   break;
  }
  break;
 }




 arcn->nlen = l_strncpy(arcn->name, ftent->fts_path, sizeof(arcn->name) - 1);
 arcn->name[arcn->nlen] = '\0';
 arcn->org_name = ftent->fts_path;
 return(0);
}
