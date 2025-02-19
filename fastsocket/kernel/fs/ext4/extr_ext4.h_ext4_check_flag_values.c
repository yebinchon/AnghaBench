
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APPEND ;
 int CHECK_FLAG_VALUE (int ) ;
 int COMPR ;
 int COMPRBLK ;
 int DIRSYNC ;
 int DIRTY ;
 int EA_INODE ;
 int ECOMPR ;
 int EOFBLOCKS ;
 int EXTENTS ;
 int HUGE_FILE ;
 int IMAGIC ;
 int IMMUTABLE ;
 int INDEX ;
 int JOURNAL_DATA ;
 int NOATIME ;
 int NOCOMPR ;
 int NODUMP ;
 int NOTAIL ;
 int RESERVED ;
 int SECRM ;
 int SYNC ;
 int TOPDIR ;
 int UNRM ;

__attribute__((used)) static inline void ext4_check_flag_values(void)
{
 CHECK_FLAG_VALUE(SECRM);
 CHECK_FLAG_VALUE(UNRM);
 CHECK_FLAG_VALUE(COMPR);
 CHECK_FLAG_VALUE(SYNC);
 CHECK_FLAG_VALUE(IMMUTABLE);
 CHECK_FLAG_VALUE(APPEND);
 CHECK_FLAG_VALUE(NODUMP);
 CHECK_FLAG_VALUE(NOATIME);
 CHECK_FLAG_VALUE(DIRTY);
 CHECK_FLAG_VALUE(COMPRBLK);
 CHECK_FLAG_VALUE(NOCOMPR);
 CHECK_FLAG_VALUE(ECOMPR);
 CHECK_FLAG_VALUE(INDEX);
 CHECK_FLAG_VALUE(IMAGIC);
 CHECK_FLAG_VALUE(JOURNAL_DATA);
 CHECK_FLAG_VALUE(NOTAIL);
 CHECK_FLAG_VALUE(DIRSYNC);
 CHECK_FLAG_VALUE(TOPDIR);
 CHECK_FLAG_VALUE(HUGE_FILE);
 CHECK_FLAG_VALUE(EXTENTS);
 CHECK_FLAG_VALUE(EA_INODE);
 CHECK_FLAG_VALUE(EOFBLOCKS);
 CHECK_FLAG_VALUE(RESERVED);
}
