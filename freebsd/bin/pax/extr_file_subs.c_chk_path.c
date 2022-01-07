
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct stat {int st_mode; } ;
typedef int gid_t ;


 int FILEBITS ;
 int R_OK ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;
 int W_OK ;
 int X_OK ;
 scalar_t__ access (char*,int) ;
 int add_dir (char*,int,struct stat*,int) ;
 scalar_t__ lstat (char*,struct stat*) ;
 scalar_t__ mkdir (char*,int) ;
 scalar_t__ pids ;
 int set_ids (char*,int ,int ) ;
 int set_pmode (char*,int) ;
 char* strchr (char*,char) ;

int
chk_path( char *name, uid_t st_uid, gid_t st_gid)
{
 char *spt = name;
 struct stat sb;
 int retval = -1;




 if (*spt == '/')
  ++spt;

 for(;;) {



  spt = strchr(spt, '/');
  if (spt == ((void*)0))
   break;
  *spt = '\0';
  if (lstat(name, &sb) == 0) {
   *(spt++) = '/';
   continue;
  }





  if (mkdir(name, S_IRWXU | S_IRWXG | S_IRWXO) < 0) {
   *spt = '/';
   retval = -1;
   break;
  }






  retval = 0;
  if (pids)
   (void)set_ids(name, st_uid, st_gid);







  if ((access(name, R_OK | W_OK | X_OK) < 0) &&
      (lstat(name, &sb) == 0)) {
   set_pmode(name, ((sb.st_mode & FILEBITS) | S_IRWXU));
   add_dir(name, spt - name, &sb, 1);
  }
  *(spt++) = '/';
  continue;
 }
 return(retval);
}
