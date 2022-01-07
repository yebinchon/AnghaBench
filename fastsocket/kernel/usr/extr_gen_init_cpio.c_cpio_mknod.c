
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
typedef scalar_t__ time_t ;
typedef scalar_t__ gid_t ;


 unsigned int S_IFBLK ;
 unsigned int S_IFCHR ;
 int ino ;
 int push_hdr (char*) ;
 int push_rest (char const*) ;
 int sprintf (char*,char*,char*,int ,unsigned int,long,long,int,long,int ,int,int,unsigned int,unsigned int,unsigned int,int ) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static int cpio_mknod(const char *name, unsigned int mode,
         uid_t uid, gid_t gid, char dev_type,
         unsigned int maj, unsigned int min)
{
 char s[256];
 time_t mtime = time(((void*)0));

 if (dev_type == 'b')
  mode |= S_IFBLK;
 else
  mode |= S_IFCHR;

 sprintf(s,"%s%08X%08X%08lX%08lX%08X%08lX"
        "%08X%08X%08X%08X%08X%08X%08X",
  "070701",
  ino++,
  mode,
  (long) uid,
  (long) gid,
  1,
  (long) mtime,
  0,
  3,
  1,
  maj,
  min,
  (unsigned)strlen(name) + 1,
  0);
 push_hdr(s);
 push_rest(name);
 return 0;
}
