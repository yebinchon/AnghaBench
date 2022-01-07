
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct stat64 {scalar_t__ st_ino; int member_0; } ;
struct TYPE_5__ {scalar_t__ shares; int errbuf; TYPE_1__* zhp; int dsmnt; } ;
typedef TYPE_2__ differ_info_t ;
struct TYPE_4__ {int zfs_hdl; } ;


 int EZFS_DIFF ;
 int MAXPATHLEN ;
 int TEXT_DOMAIN ;
 int ZDIFF_SHARESDIR ;
 char* dgettext (int ,char*) ;
 int snprintf (int ,int,char*,char*) ;
 scalar_t__ stat64 (char*,struct stat64*) ;
 int strlcat (char*,int ,int) ;
 int strlcpy (char*,int ,int) ;
 int zfs_error (int ,int ,int ) ;

__attribute__((used)) static int
find_shares_object(differ_info_t *di)
{
 char fullpath[MAXPATHLEN];
 struct stat64 sb = { 0 };

 (void) strlcpy(fullpath, di->dsmnt, MAXPATHLEN);
 (void) strlcat(fullpath, ZDIFF_SHARESDIR, MAXPATHLEN);

 if (stat64(fullpath, &sb) != 0) {





  return (0);

 }

 di->shares = (uint64_t)sb.st_ino;
 return (0);
}
