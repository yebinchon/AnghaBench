
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uintmax_t ;
typedef scalar_t__ u_long ;
struct stat {int st_mode; int st_blocks; scalar_t__ st_ino; } ;
struct TYPE_3__ {int fts_name; struct stat* fts_statp; } ;
typedef TYPE_1__ FTSENT ;


 int blocksize ;
 int colortype (int ) ;
 int endcolor (int ) ;
 scalar_t__ f_color ;
 scalar_t__ f_inode ;
 scalar_t__ f_size ;
 scalar_t__ f_type ;
 int howmany (int ,int ) ;
 scalar_t__ printf (char*,int,int ) ;
 scalar_t__ printname (int ) ;
 scalar_t__ printtype (int ) ;

__attribute__((used)) static int
printaname(const FTSENT *p, u_long inodefield, u_long sizefield)
{
 struct stat *sp;
 int chcnt;




 sp = p->fts_statp;
 chcnt = 0;
 if (f_inode)
  chcnt += printf("%*ju ",
      (int)inodefield, (uintmax_t)sp->st_ino);
 if (f_size)
  chcnt += printf("%*jd ",
      (int)sizefield, howmany(sp->st_blocks, blocksize));




 chcnt += printname(p->fts_name);




 if (f_type)
  chcnt += printtype(sp->st_mode);
 return (chcnt);
}
