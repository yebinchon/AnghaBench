
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
typedef scalar_t__ time_t ;
typedef scalar_t__ gid_t ;


 unsigned int S_IFLNK ;
 int ino ;
 int push_hdr (char*) ;
 int push_pad () ;
 int push_string (char const*) ;
 int sprintf (char*,char*,char*,int ,unsigned int,long,long,int,long,unsigned int,int,int,int ,int ,unsigned int,int ) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static int cpio_mkslink(const char *name, const char *target,
    unsigned int mode, uid_t uid, gid_t gid)
{
 char s[256];
 time_t mtime = time(((void*)0));

 sprintf(s,"%s%08X%08X%08lX%08lX%08X%08lX"
        "%08X%08X%08X%08X%08X%08X%08X",
  "070701",
  ino++,
  S_IFLNK | mode,
  (long) uid,
  (long) gid,
  1,
  (long) mtime,
  (unsigned)strlen(target)+1,
  3,
  1,
  0,
  0,
  (unsigned)strlen(name) + 1,
  0);
 push_hdr(s);
 push_string(name);
 push_pad();
 push_string(target);
 push_pad();
 return 0;
}
