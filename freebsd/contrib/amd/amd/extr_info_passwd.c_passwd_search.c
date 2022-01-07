
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int time_t ;
struct passwd {char* pw_dir; } ;
typedef int rhost ;
typedef int mnt_map ;


 int ENOENT ;
 int MAXHOSTNAMELEN ;
 int MAXPATHLEN ;
 scalar_t__ STREQ (char*,char*) ;
 int XFREE (char*) ;
 int dlog (char*,char*,char*,char*) ;
 struct passwd* getpwnam (char*) ;
 char* strchr (char*,char) ;
 char* strrchr (char*,char) ;
 int xsnprintf (char*,int,char*,char*,char*,char*,char*,char*) ;
 char* xstrdup (char*) ;
 int xstrlcat (char*,char*,int) ;

int
passwd_search(mnt_map *m, char *map, char *key, char **pval, time_t *tp)
{
  char *dir = ((void*)0);
  struct passwd *pw;

  if (STREQ(key, "/defaults")) {
    *pval = xstrdup("type:=nfs");
    return 0;
  }
  pw = getpwnam(key);

  if (pw) {
    char *user;
    char *p, *q;
    char val[MAXPATHLEN];
    char rhost[MAXHOSTNAMELEN];
    dir = xstrdup(pw->pw_dir);




    user = strrchr(dir, '/');
    if (!user)
      goto enoent;
    *user++ = '\0';




    p = strchr(dir + 1, '/');
    if (!p)
      goto enoent;
    *p++ = '\0';






    rhost[0] = '\0';
    do {
      q = strrchr(p, '/');
      if (q) {
 xstrlcat(rhost, q + 1, sizeof(rhost));
 xstrlcat(rhost, ".", sizeof(rhost));
 *q = '\0';
      } else {
 xstrlcat(rhost, p, sizeof(rhost));
      }
    } while (q);




    if (*rhost == '\0' || *user == '\0' || *dir == '\0')
      goto enoent;




    q = strchr(rhost, '.');
    if (q)
      *q = '\0';
    p = strchr(map, ':');
    if (p)
      p++;
    else
      p = "type:=nfs;rfs:=/${var0}/${var1};rhost:=${var1};sublink:=${var2};fs:=${autodir}${var3}";
    xsnprintf(val, sizeof(val), "var0:=%s;var1:=%s;var2:=%s;var3:=%s;%s",
       dir+1, rhost, user, pw->pw_dir, p);
    dlog("passwd_search: map=%s key=%s -> %s", map, key, val);
    if (q)
      *q = '.';
    *pval = xstrdup(val);
    return 0;
  }

enoent:
  XFREE(dir);

  return ENOENT;
}
