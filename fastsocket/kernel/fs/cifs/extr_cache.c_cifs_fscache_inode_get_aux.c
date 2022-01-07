
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct cifs_fscache_inode_auxdata {int last_change_time; int last_write_time; int eof; } ;
struct TYPE_2__ {int i_ctime; int i_mtime; } ;
struct cifsInodeInfo {TYPE_1__ vfs_inode; int server_eof; } ;
typedef int auxdata ;


 int memcpy (void*,struct cifs_fscache_inode_auxdata*,int) ;
 int memset (struct cifs_fscache_inode_auxdata*,int ,int) ;

__attribute__((used)) static uint16_t
cifs_fscache_inode_get_aux(const void *cookie_netfs_data, void *buffer,
      uint16_t maxbuf)
{
 struct cifs_fscache_inode_auxdata auxdata;
 const struct cifsInodeInfo *cifsi = cookie_netfs_data;

 memset(&auxdata, 0, sizeof(auxdata));
 auxdata.eof = cifsi->server_eof;
 auxdata.last_write_time = cifsi->vfs_inode.i_mtime;
 auxdata.last_change_time = cifsi->vfs_inode.i_ctime;

 if (maxbuf > sizeof(auxdata))
  maxbuf = sizeof(auxdata);

 memcpy(buffer, &auxdata, maxbuf);

 return maxbuf;
}
