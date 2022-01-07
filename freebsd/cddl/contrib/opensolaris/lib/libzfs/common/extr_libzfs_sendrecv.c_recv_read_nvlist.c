
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_cksum_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef int boolean_t ;


 int EINVAL ;
 int ENOMEM ;
 int TEXT_DOMAIN ;
 int dgettext (int ,char*) ;
 int free (char*) ;
 int nvlist_unpack (char*,int,int **,int ) ;
 int recv_read (int *,int,char*,int,int ,int *) ;
 char* zfs_alloc (int *,int) ;
 int zfs_error_aux (int *,int ) ;

__attribute__((used)) static int
recv_read_nvlist(libzfs_handle_t *hdl, int fd, int len, nvlist_t **nvp,
    boolean_t byteswap, zio_cksum_t *zc)
{
 char *buf;
 int err;

 buf = zfs_alloc(hdl, len);
 if (buf == ((void*)0))
  return (ENOMEM);

 err = recv_read(hdl, fd, buf, len, byteswap, zc);
 if (err != 0) {
  free(buf);
  return (err);
 }

 err = nvlist_unpack(buf, len, nvp, 0);
 free(buf);
 if (err != 0) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN, "invalid "
      "stream (malformed nvlist)"));
  return (EINVAL);
 }
 return (0);
}
