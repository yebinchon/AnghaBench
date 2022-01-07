
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int try ;
struct stat {int st_mode; } ;
typedef int dirbase ;


 int MAXPATHLEN ;
 int S_IFDIR ;
 int S_IFMT ;
 int cached_stat (char*,struct stat*) ;
 int snprintf (char*,int,char*,char*,...) ;
 int strlen (char*) ;

int
Dir_FindHereOrAbove(char *here, char *search_path, char *result, int rlen) {

 struct stat st;
 char dirbase[MAXPATHLEN + 1], *db_end;
        char try[MAXPATHLEN + 1], *try_end;


 snprintf(dirbase, sizeof(dirbase), "%s", here);
 db_end = dirbase + strlen(dirbase);


 while (1) {


  snprintf(try, sizeof(try), "%s/%s", dirbase, search_path);
  if (cached_stat(try, &st) != -1) {




   if ((st.st_mode & S_IFMT) != S_IFDIR) {
    try_end = try + strlen(try);
    while (try_end > try && *try_end != '/')
     try_end--;
    if (try_end > try)
     *try_end = 0;
   }




   snprintf(result, rlen, "%s", try);
   return(1);
  }





  if (db_end == dirbase)
   break;




  while (db_end > dirbase && *db_end != '/')
   db_end--;
  *db_end = 0;

 }




 return(0);
}
