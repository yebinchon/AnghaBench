
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libzfs_handle_t ;
typedef int errbuf ;




 int EZFS_BADTYPE ;
 int EZFS_BADVERSION ;
 int TEXT_DOMAIN ;
 char* dgettext (int ,char*) ;
 int lzc_remap (char const*) ;
 int snprintf (char*,int,char*,char const*) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,char*) ;
 int zfs_standard_error (int *,int,char*) ;

int
zfs_remap_indirects(libzfs_handle_t *hdl, const char *fs)
{
 int err;
 char errbuf[1024];

 (void) snprintf(errbuf, sizeof (errbuf), dgettext(TEXT_DOMAIN,
     "cannot remap dataset '%s'"), fs);

 err = lzc_remap(fs);

 if (err != 0) {
  switch (err) {
  case 128:
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "pool must be upgraded"));
   (void) zfs_error(hdl, EZFS_BADVERSION, errbuf);
   break;
  case 129:
   (void) zfs_error(hdl, EZFS_BADTYPE, errbuf);
   break;
  default:
   (void) zfs_standard_error(hdl, err, errbuf);
   break;
  }
 }

 return (err);
}
