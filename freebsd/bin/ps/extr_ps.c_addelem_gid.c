
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct TYPE_2__ {int * gids; } ;
struct listinfo {scalar_t__ count; scalar_t__ maxcount; TYPE_1__ l; int lname; } ;
struct group {int gr_gid; } ;
typedef int gid_t ;


 scalar_t__ GID_MAX ;
 scalar_t__ MAXLOGNAME ;
 scalar_t__ errno ;
 int expand_list (struct listinfo*) ;
 struct group* getgrgid (int ) ;
 struct group* getgrnam (char const*) ;
 int optfatal ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strtoul (char const*,char**,int) ;
 int xo_warnx (char*,int ,...) ;

__attribute__((used)) static int
addelem_gid(struct listinfo *inf, const char *elem)
{
 struct group *grp;
 const char *nameorID;
 char *endp;
 u_long bigtemp;

 if (*elem == '\0' || strlen(elem) >= MAXLOGNAME) {
  if (*elem == '\0')
   xo_warnx("Invalid (zero-length) %s name", inf->lname);
  else
   xo_warnx("%s name too long: %s", inf->lname, elem);
  optfatal = 1;
  return (0);
 }
 grp = ((void*)0);
 nameorID = "named";
 errno = 0;
 bigtemp = strtoul(elem, &endp, 10);
 if (errno == 0 && *endp == '\0' && bigtemp <= GID_MAX) {
  nameorID = "name or ID matches";
  grp = getgrgid((gid_t)bigtemp);
 }
 if (grp == ((void*)0))
  grp = getgrnam(elem);
 if (grp == ((void*)0)) {
  xo_warnx("No %s %s '%s'", inf->lname, nameorID, elem);
  optfatal = 1;
  return (0);
 }
 if (inf->count >= inf->maxcount)
  expand_list(inf);
 inf->l.gids[(inf->count)++] = grp->gr_gid;
 return (1);
}
