
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int default_domain ;
struct TYPE_2__ {int nis_domain; } ;


 int EIO ;
 int ENOENT ;
 int XLOG_ERROR ;
 int XLOG_WARNING ;
 int YPMAXDOMAIN ;
 scalar_t__ getdomainname (char*,int) ;
 TYPE_1__ gopt ;
 int plog (int ,char*) ;
 int xstrdup (char*) ;

__attribute__((used)) static int
determine_nis_domain(void)
{
  static int nis_not_running = 0;
  char default_domain[YPMAXDOMAIN];

  if (nis_not_running)
    return ENOENT;

  if (getdomainname(default_domain, sizeof(default_domain)) < 0) {
    nis_not_running = 1;
    plog(XLOG_ERROR, "getdomainname: %m");
    return EIO;
  }
  if (!*default_domain) {
    nis_not_running = 1;
    plog(XLOG_WARNING, "NIS domain name is not set.  NIS ignored.");
    return ENOENT;
  }
  gopt.nis_domain = xstrdup(default_domain);

  return 0;
}
