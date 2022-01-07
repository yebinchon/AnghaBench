
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dk_gpt {int dummy; } ;
typedef int path ;
typedef int boolean_t ;


 int BACKUP_SLICE ;
 int B_FALSE ;
 int B_TRUE ;
 int EFI_NUMPAR ;
 int MAXPATHLEN ;
 int O_NDELAY ;
 int O_RDWR ;
 char* ZFS_RDISK_ROOT ;
 int close (int) ;
 scalar_t__ efi_alloc_and_init (int,int ,struct dk_gpt**) ;
 int efi_free (struct dk_gpt*) ;
 int g_close (int) ;
 int g_open (char const*,int ) ;
 int open (char*,int) ;
 int snprintf (char*,int,char*,char*,char*,int ) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static boolean_t
is_whole_disk(const char *arg)
{
 int fd;

 fd = g_open(arg, 0);
 if (fd >= 0) {
  g_close(fd);
  return (B_TRUE);
 }
 return (B_FALSE);

}
