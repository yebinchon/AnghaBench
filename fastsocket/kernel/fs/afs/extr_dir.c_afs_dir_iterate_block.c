
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int unique; int vnode; int name; } ;
union afs_dirent {TYPE_2__ u; } ;
struct TYPE_3__ {unsigned int nentries; int* bitmap; } ;
union afs_dir_block {TYPE_1__ pagehdr; union afs_dirent* dirents; } ;
typedef int (* filldir_t ) (void*,int ,size_t,unsigned int,int ,int ) ;


 unsigned int AFS_DIRENT_PER_BLOCK ;
 int DT_UNKNOWN ;
 int EIO ;
 int _debug (char*,unsigned int,unsigned int,...) ;
 int _enter (char*,unsigned int,unsigned int,union afs_dir_block*) ;
 int _leave (char*) ;
 int afs_lookup_filldir (void*,int ,size_t,unsigned int,int ,int ) ;
 int ntohl (int ) ;
 size_t strnlen (int ,int) ;

__attribute__((used)) static int afs_dir_iterate_block(unsigned *fpos,
     union afs_dir_block *block,
     unsigned blkoff,
     void *cookie,
     filldir_t filldir)
{
 union afs_dirent *dire;
 unsigned offset, next, curr;
 size_t nlen;
 int tmp, ret;

 _enter("%u,%x,%p,,",*fpos,blkoff,block);

 curr = (*fpos - blkoff) / sizeof(union afs_dirent);


 for (offset = AFS_DIRENT_PER_BLOCK - block->pagehdr.nentries;
      offset < AFS_DIRENT_PER_BLOCK;
      offset = next
      ) {
  next = offset + 1;


  if (!(block->pagehdr.bitmap[offset / 8] &
        (1 << (offset % 8)))) {
   _debug("ENT[%Zu.%u]: unused",
          blkoff / sizeof(union afs_dir_block), offset);
   if (offset >= curr)
    *fpos = blkoff +
     next * sizeof(union afs_dirent);
   continue;
  }


  dire = &block->dirents[offset];
  nlen = strnlen(dire->u.name,
          sizeof(*block) -
          offset * sizeof(union afs_dirent));

  _debug("ENT[%Zu.%u]: %s %Zu \"%s\"",
         blkoff / sizeof(union afs_dir_block), offset,
         (offset < curr ? "skip" : "fill"),
         nlen, dire->u.name);


  for (tmp = nlen; tmp > 15; tmp -= sizeof(union afs_dirent)) {
   if (next >= AFS_DIRENT_PER_BLOCK) {
    _debug("ENT[%Zu.%u]:"
           " %u travelled beyond end dir block"
           " (len %u/%Zu)",
           blkoff / sizeof(union afs_dir_block),
           offset, next, tmp, nlen);
    return -EIO;
   }
   if (!(block->pagehdr.bitmap[next / 8] &
         (1 << (next % 8)))) {
    _debug("ENT[%Zu.%u]:"
           " %u unmarked extension (len %u/%Zu)",
           blkoff / sizeof(union afs_dir_block),
           offset, next, tmp, nlen);
    return -EIO;
   }

   _debug("ENT[%Zu.%u]: ext %u/%Zu",
          blkoff / sizeof(union afs_dir_block),
          next, tmp, nlen);
   next++;
  }


  if (offset < curr)
   continue;


  ret = filldir(cookie,
         dire->u.name,
         nlen,
         blkoff + offset * sizeof(union afs_dirent),
         ntohl(dire->u.vnode),
         filldir == afs_lookup_filldir ?
         ntohl(dire->u.unique) : DT_UNKNOWN);
  if (ret < 0) {
   _leave(" = 0 [full]");
   return 0;
  }

  *fpos = blkoff + next * sizeof(union afs_dirent);
 }

 _leave(" = 1 [more]");
 return 1;
}
