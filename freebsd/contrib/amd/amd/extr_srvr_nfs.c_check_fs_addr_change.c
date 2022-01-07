
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int voidp ;
struct in_addr {int dummy; } ;
struct hostent {scalar_t__ h_addrtype; scalar_t__ h_addr; scalar_t__ h_name; } ;
struct TYPE_8__ {int fs_flags; TYPE_1__* fs_ip; int fs_host; } ;
typedef TYPE_2__ fserver ;
struct TYPE_7__ {struct in_addr sin_addr; } ;


 scalar_t__ AF_INET ;
 int FSF_DOWN ;
 int FSF_FORCE_UNMOUNT ;
 int FSF_VALID ;
 int FSF_WANT ;
 int STREQ (char*,int ) ;
 int XFREE (char*) ;
 int XLOG_WARNING ;
 int flush_nfs_fhandle_cache (TYPE_2__*) ;
 int flush_srvr_nfs_cache (TYPE_2__*) ;
 struct hostent* gethostbyname (int ) ;
 char* inet_ntoa (struct in_addr) ;
 int map_flush_srvr (TYPE_2__*) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int memmove (int ,int ,int) ;
 int plog (int ,char*,int ,char*,char*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static void
check_fs_addr_change(fserver *fs)
{
  struct hostent *hp = ((void*)0);
  struct in_addr ia;
  char *old_ipaddr, *new_ipaddr;

  hp = gethostbyname(fs->fs_host);
  if (!hp ||
      hp->h_addrtype != AF_INET ||
      !STREQ((char *) hp->h_name, fs->fs_host) ||
      memcmp((voidp) &fs->fs_ip->sin_addr,
      (voidp) hp->h_addr,
      sizeof(fs->fs_ip->sin_addr)) == 0)
    return;

  old_ipaddr = xstrdup(inet_ntoa(fs->fs_ip->sin_addr));
  memmove((voidp) &ia, (voidp) hp->h_addr, sizeof(struct in_addr));
  new_ipaddr = inet_ntoa(ia);
  plog(XLOG_WARNING, "EZK: down fileserver %s changed ip: %s -> %s",
       fs->fs_host, old_ipaddr, new_ipaddr);
  XFREE(old_ipaddr);

  memmove((voidp) &fs->fs_ip->sin_addr,
   (voidp) hp->h_addr,
   sizeof(fs->fs_ip->sin_addr));

  fs->fs_flags &= ~FSF_DOWN;
  fs->fs_flags |= FSF_VALID | FSF_WANT;
  map_flush_srvr(fs);
  flush_srvr_nfs_cache(fs);
  fs->fs_flags |= FSF_FORCE_UNMOUNT;





}
