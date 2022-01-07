
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ELFTC_DEM_ARM ;
 int ELFTC_DEM_GNU2 ;
 int ELFTC_DEM_GNU3 ;
 int ELFTC_DEM_UNKNOWN ;
 int EXIT_FAILURE ;
 int errx (int ,char*,char const*) ;
 int strncasecmp (char const*,char*,int) ;

__attribute__((used)) static int
parse_demangle_option(const char *opt)
{

 if (opt == ((void*)0))
  return (ELFTC_DEM_UNKNOWN);
 else if (!strncasecmp(opt, "gnu-v2", 6))
  return (ELFTC_DEM_GNU2);
 else if (!strncasecmp(opt, "gnu-v3", 6))
  return (ELFTC_DEM_GNU3);
 else if (!strncasecmp(opt, "arm", 3))
  return (ELFTC_DEM_ARM);
 else
  errx(EXIT_FAILURE, "unknown demangling style '%s'", opt);


 return (0);
}
