
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int oneopt ;
struct TYPE_3__ {char* mnt_opts; } ;
typedef TYPE_1__ mntent_t ;


 int XFREE (char*) ;
 scalar_t__ amu_hasmntopt (TYPE_1__*,char*) ;
 char* reverse_option (char*) ;
 char* strchr (char*,char) ;
 int strlen (char const*) ;
 char* strtok (char*,char*) ;
 char* xmalloc (size_t) ;
 char* xstrdup (char const*) ;
 int xstrlcat (char*,char const*,size_t) ;
 int xstrlcpy (char*,char const*,size_t) ;

__attribute__((used)) static char *
merge_opts(const char *opts1, const char *opts2)
{
  mntent_t mnt2;
  char *newstr;
  char *tmpstr;
  char *eq;
  char oneopt[80];
  char *revoneopt;
  size_t len = strlen(opts1) + strlen(opts2) + 2;
  char *s1 = xstrdup(opts1);


  mnt2.mnt_opts = (char *) opts2;
  newstr = xmalloc(len);
  newstr[0] = '\0';

  for (tmpstr = strtok(s1, ",");
       tmpstr;
       tmpstr = strtok(((void*)0), ",")) {

    xstrlcpy(oneopt, tmpstr, sizeof(oneopt));

    if ((eq = strchr(oneopt, '=')))
      *eq = '\0';

    revoneopt = reverse_option(oneopt);

    if (amu_hasmntopt(&mnt2, oneopt) || amu_hasmntopt(&mnt2, revoneopt))
      continue;

    if (newstr[0]) {
      xstrlcat(newstr, ",", len);
      xstrlcat(newstr, tmpstr, len);
    } else {
      xstrlcpy(newstr, tmpstr, len);
    }
  }


  if (newstr[0]) {
    xstrlcat(newstr, ",", len);
    xstrlcat(newstr, opts2, len);
  } else {
    xstrlcpy(newstr, opts2, len);
  }

  XFREE(s1);
  return newstr;
}
