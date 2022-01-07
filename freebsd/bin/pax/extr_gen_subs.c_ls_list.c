
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char* uintmax_t ;
typedef scalar_t__ time_t ;
struct stat {scalar_t__ st_mtime; char* st_size; int st_rdev; int st_uid; scalar_t__ st_nlink; int st_gid; int st_mode; } ;
struct TYPE_3__ {char* name; scalar_t__ type; char* ln_name; struct stat sb; } ;
typedef int FILE ;
typedef TYPE_1__ ARCHD ;


 char* CURFRMTD ;
 char* CURFRMTM ;
 int DATELEN ;
 int D_MD_ORDER ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 int MODELEN ;
 char* OLDFRMTD ;
 char* OLDFRMTM ;
 scalar_t__ PAX_BLK ;
 scalar_t__ PAX_CHR ;
 scalar_t__ PAX_HLK ;
 scalar_t__ PAX_HRG ;
 scalar_t__ PAX_SLK ;
 scalar_t__ SIXMONTHS ;
 int d_first ;
 int fflush (int *) ;
 int fprintf (int *,char*,...) ;
 int localtime (scalar_t__*) ;
 int name_gid (int ,int) ;
 char* name_uid (int ,int) ;
 char* nl_langinfo (int ) ;
 int putc (char,int *) ;
 scalar_t__ strftime (char*,int,char const*,int ) ;
 int strmode (int ,char*) ;
 int vflag ;

void
ls_list(ARCHD *arcn, time_t now, FILE *fp)
{
 struct stat *sbp;
 char f_mode[MODELEN];
 char f_date[DATELEN];
 const char *timefrmt;




 if (!vflag) {
  (void)fprintf(fp, "%s\n", arcn->name);
  (void)fflush(fp);
  return;
 }

 if (d_first < 0)
  d_first = (*nl_langinfo(D_MD_ORDER) == 'd');



 sbp = &(arcn->sb);
 strmode(sbp->st_mode, f_mode);




 if ((sbp->st_mtime + SIXMONTHS) <= now)
  timefrmt = d_first ? OLDFRMTD : OLDFRMTM;
 else
  timefrmt = d_first ? CURFRMTD : CURFRMTM;




 if (strftime(f_date,DATELEN,timefrmt,localtime(&(sbp->st_mtime))) == 0)
  f_date[0] = '\0';
 (void)fprintf(fp, "%s%2ju %-12s %-12s ", f_mode,
  (uintmax_t)sbp->st_nlink,
  name_uid(sbp->st_uid, 1), name_gid(sbp->st_gid, 1));




 if ((arcn->type == PAX_CHR) || (arcn->type == PAX_BLK))




  (void)fprintf(fp, "%4lu,%4lu ", (unsigned long)MAJOR(sbp->st_rdev),
      (unsigned long)MINOR(sbp->st_rdev));

 else {



  (void)fprintf(fp, "%9ju ", (uintmax_t)sbp->st_size);

 }




 (void)fprintf(fp, "%s %s", f_date, arcn->name);
 if ((arcn->type == PAX_HLK) || (arcn->type == PAX_HRG))
  (void)fprintf(fp, " == %s\n", arcn->ln_name);
 else if (arcn->type == PAX_SLK)
  (void)fprintf(fp, " => %s\n", arcn->ln_name);
 else
  (void)putc('\n', fp);
 (void)fflush(fp);
 return;
}
