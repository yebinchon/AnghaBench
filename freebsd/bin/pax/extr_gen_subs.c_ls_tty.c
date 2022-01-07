
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ st_mtime; int st_mode; } ;
struct TYPE_5__ {int name; TYPE_1__ sb; } ;
typedef TYPE_2__ ARCHD ;


 char* CURFRMTD ;
 char* CURFRMTM ;
 int DATELEN ;
 int D_MD_ORDER ;
 int MODELEN ;
 char* OLDFRMTD ;
 char* OLDFRMTM ;
 scalar_t__ SIXMONTHS ;
 int d_first ;
 int localtime (scalar_t__*) ;
 char* nl_langinfo (int ) ;
 scalar_t__ strftime (char*,int,char const*,int ) ;
 int strmode (int ,char*) ;
 scalar_t__ time (int *) ;
 int tty_prnt (char*,char*,char*,int ) ;

void
ls_tty(ARCHD *arcn)
{
 char f_date[DATELEN];
 char f_mode[MODELEN];
 const char *timefrmt;

 if (d_first < 0)
  d_first = (*nl_langinfo(D_MD_ORDER) == 'd');

 if ((arcn->sb.st_mtime + SIXMONTHS) <= time(((void*)0)))
  timefrmt = d_first ? OLDFRMTD : OLDFRMTM;
 else
  timefrmt = d_first ? CURFRMTD : CURFRMTM;




 if (strftime(f_date, DATELEN, timefrmt,
     localtime(&(arcn->sb.st_mtime))) == 0)
  f_date[0] = '\0';
 strmode(arcn->sb.st_mode, f_mode);
 tty_prnt("%s%s %s\n", f_mode, f_date, arcn->name);
 return;
}
