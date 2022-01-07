
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int st_blksize; scalar_t__ st_mtime; } ;
typedef long off_t ;
struct TYPE_4__ {int st_blocks; long st_size; scalar_t__ st_mtime; } ;
struct TYPE_5__ {char* name; char* org_name; TYPE_1__ sb; } ;
typedef TYPE_2__ ARCHD ;


 int BLKMULT ;
 int MINFBSZ ;
 int blksz ;
 int buf ;
 int errno ;
 int file_flush (int,char*,int) ;
 int file_write (int,int ,int,int*,int*,int,char*) ;
 scalar_t__ fstat (int,struct stat*) ;
 int paxwarn (int,char*,char*,char*) ;
 int read (int,int ,int ) ;
 int syswarn (int,int ,char*,char*,...) ;
 int write (int,int ,int) ;

void
cp_file(ARCHD *arcn, int fd1, int fd2)
{
 int cnt;
 off_t cpcnt = 0L;
 int res = 0;
 char *fnm = arcn->name;
 int no_hole = 0;
 int isem = 1;
 int rem;
 int sz = MINFBSZ;
 struct stat sb;





  if (((off_t)(arcn->sb.st_blocks * BLKMULT)) >= arcn->sb.st_size)
  ++no_hole;





 if (fstat(fd2, &sb) == 0) {
  if (sb.st_blksize > 0)
   sz = sb.st_blksize;
 } else
  syswarn(0,errno,"Unable to obtain block size for file %s",fnm);
 rem = sz;




 for(;;) {
  if ((cnt = read(fd1, buf, blksz)) <= 0)
   break;
  if (no_hole)
   res = write(fd2, buf, cnt);
  else
   res = file_write(fd2, buf, cnt, &rem, &isem, sz, fnm);
  if (res != cnt)
   break;
  cpcnt += cnt;
 }




 if (res < 0)
  syswarn(1, errno, "Failed write during copy of %s to %s",
   arcn->org_name, arcn->name);
 else if (cpcnt != arcn->sb.st_size)
  paxwarn(1, "File %s changed size during copy to %s",
   arcn->org_name, arcn->name);
 else if (fstat(fd1, &sb) < 0)
  syswarn(1, errno, "Failed stat of %s", arcn->org_name);
 else if (arcn->sb.st_mtime != sb.st_mtime)
  paxwarn(1, "File %s was modified during copy to %s",
   arcn->org_name, arcn->name);







 if (!no_hole && isem && (arcn->sb.st_size > 0L))
  file_flush(fd2, fnm, isem);
 return;
}
