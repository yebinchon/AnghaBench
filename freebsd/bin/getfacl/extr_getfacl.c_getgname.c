
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {char* gr_name; } ;
typedef int gids ;
typedef int gid_t ;


 struct group* getgrgid (int) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static char *
getgname(gid_t gid)
{
 struct group *gr;
 static char gids[10];

 if ((gr = getgrgid(gid)) == ((void*)0)) {
  (void)snprintf(gids, sizeof(gids), "%u", gid);
  return (gids);
 } else
  return (gr->gr_name);
}
