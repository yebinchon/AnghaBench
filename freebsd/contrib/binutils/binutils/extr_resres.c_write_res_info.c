
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int windres_bfd ;
struct bin_res_info {int characteristics; int version2; int language; int memflags; int version; } ;
typedef scalar_t__ rc_uint_type ;
struct TYPE_3__ {int characteristics; int version; int language; int memflags; } ;
typedef TYPE_1__ rc_res_res_info ;


 scalar_t__ BIN_RES_INFO_SIZE ;
 int set_windres_bfd_content (int *,struct bin_res_info*,scalar_t__,scalar_t__) ;
 int windres_put_16 (int *,int ,int ) ;
 int windres_put_32 (int *,int ,int ) ;

__attribute__((used)) static rc_uint_type
write_res_info (windres_bfd *wrbfd, rc_uint_type off, const rc_res_res_info *info)
{
  if (wrbfd)
    {
      struct bin_res_info l;

      windres_put_32 (wrbfd, l.version, info->version);
      windres_put_16 (wrbfd, l.memflags, info->memflags);
      windres_put_16 (wrbfd, l.language, info->language);
      windres_put_32 (wrbfd, l.version2, info->version);
      windres_put_32 (wrbfd, l.characteristics, info->characteristics);
      set_windres_bfd_content (wrbfd, &l, off, BIN_RES_INFO_SIZE);
    }
  return off + BIN_RES_INFO_SIZE;
}
