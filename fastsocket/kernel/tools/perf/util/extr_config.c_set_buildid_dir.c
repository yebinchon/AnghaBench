
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* DEBUG_CACHE_DIR ;
 int MAXPATHLEN ;
 char* buildid_dir ;
 int check_buildid_dir_config () ;
 char* getenv (char*) ;
 int setenv (char*,char*,int) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int strncpy (char*,char*,int) ;

void set_buildid_dir(void)
{
 buildid_dir[0] = '\0';


 check_buildid_dir_config();


 if (buildid_dir[0] == '\0') {
  char *v = getenv("HOME");
  if (v) {
   snprintf(buildid_dir, MAXPATHLEN-1, "%s/%s",
     v, DEBUG_CACHE_DIR);
  } else {
   strncpy(buildid_dir, DEBUG_CACHE_DIR, MAXPATHLEN-1);
  }
  buildid_dir[MAXPATHLEN-1] = '\0';
 }

 setenv("PERF_BUILDID_DIR", buildid_dir, 1);
}
