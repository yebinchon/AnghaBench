
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_cksum_t ;
typedef int libzfs_handle_t ;
typedef scalar_t__ boolean_t ;


 int EZFS_BADSTREAM ;
 int SPA_MAXBLOCKSIZE ;
 int TEXT_DOMAIN ;
 int assert (int) ;
 int dgettext (int ,char*) ;
 int fletcher_4_incremental_byteswap (void*,int,int *) ;
 int fletcher_4_incremental_native (void*,int,int *) ;
 int read (int,char*,int) ;
 int zfs_error (int *,int ,int ) ;
 int zfs_error_aux (int *,int ) ;

__attribute__((used)) static int
recv_read(libzfs_handle_t *hdl, int fd, void *buf, int ilen,
    boolean_t byteswap, zio_cksum_t *zc)
{
 char *cp = buf;
 int rv;
 int len = ilen;

 assert(ilen <= SPA_MAXBLOCKSIZE);

 do {
  rv = read(fd, cp, len);
  cp += rv;
  len -= rv;
 } while (rv > 0);

 if (rv < 0 || len != 0) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "failed to read from stream"));
  return (zfs_error(hdl, EZFS_BADSTREAM, dgettext(TEXT_DOMAIN,
      "cannot receive")));
 }

 if (zc) {
  if (byteswap)
   (void) fletcher_4_incremental_byteswap(buf, ilen, zc);
  else
   (void) fletcher_4_incremental_native(buf, ilen, zc);
 }
 return (0);
}
