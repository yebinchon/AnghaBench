
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 scalar_t__ NSTREQ (char const*,char*,int) ;
 scalar_t__ STREQ (char const*,char*) ;
 int xstrlcat (char*,char const*,int) ;
 int xstrlcpy (char*,char const*,int) ;

__attribute__((used)) static char *
reverse_option(const char *opt)
{
  static char buf[80];


  if (!opt)
    return ((void*)0);



  if (STREQ(opt, "ro")) return "rw";
  if (STREQ(opt, "rw")) return "ro";
  if (STREQ(opt, "bg")) return "fg";
  if (STREQ(opt, "fg")) return "bg";
  if (STREQ(opt, "soft")) return "hard";
  if (STREQ(opt, "hard")) return "soft";


  if (NSTREQ(opt, "no", 2)) {
    xstrlcpy(buf, &opt[2], sizeof(buf));
  } else {

    xstrlcpy(buf, "no", sizeof(buf));
    xstrlcat(buf, opt, sizeof(buf));
  }
  return buf;
}
