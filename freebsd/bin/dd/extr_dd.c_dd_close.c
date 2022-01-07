
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dbcnt; scalar_t__ dbsz; scalar_t__ seek_offset; int flags; int name; int fd; int dbp; } ;


 int C_BLOCK ;
 int C_FDATASYNC ;
 int C_FILL ;
 int C_FSYNC ;
 int C_OSYNC ;
 int C_UNBLOCK ;
 int ISTRUNC ;
 scalar_t__ block ;
 int block_close () ;
 scalar_t__ cfunc ;
 int dd_out (int) ;
 int ddflags ;
 scalar_t__ def ;
 int def_close () ;
 int err (int,char*,int ) ;
 int fdatasync (int ) ;
 char fill_char ;
 int fsync (int ) ;
 int ftruncate (int ,scalar_t__) ;
 int memset (int ,char,scalar_t__) ;
 TYPE_1__ out ;
 scalar_t__ pending ;
 scalar_t__ unblock ;
 int unblock_close () ;

__attribute__((used)) static void
dd_close(void)
{
 if (cfunc == def)
  def_close();
 else if (cfunc == block)
  block_close();
 else if (cfunc == unblock)
  unblock_close();
 if (ddflags & C_OSYNC && out.dbcnt && out.dbcnt < out.dbsz) {
  if (ddflags & C_FILL)
   memset(out.dbp, fill_char, out.dbsz - out.dbcnt);
  else if (ddflags & (C_BLOCK | C_UNBLOCK))
   memset(out.dbp, ' ', out.dbsz - out.dbcnt);
  else
   memset(out.dbp, 0, out.dbsz - out.dbcnt);
  out.dbcnt = out.dbsz;
 }
 if (out.dbcnt || pending)
  dd_out(1);





 if (out.seek_offset > 0 && (out.flags & ISTRUNC)) {
  if (ftruncate(out.fd, out.seek_offset) == -1)
   err(1, "truncating %s", out.name);
 }

 if (ddflags & C_FSYNC) {
  if (fsync(out.fd) == -1)
   err(1, "fsyncing %s", out.name);
 } else if (ddflags & C_FDATASYNC) {
  if (fdatasync(out.fd) == -1)
   err(1, "fdatasyncing %s", out.name);
 }
}
