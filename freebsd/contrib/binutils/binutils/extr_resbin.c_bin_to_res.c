
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int windres_bfd ;
typedef int rc_uint_type ;
typedef int rc_res_resource ;
struct TYPE_4__ {int id; } ;
struct TYPE_5__ {TYPE_1__ u; scalar_t__ named; } ;
typedef TYPE_2__ rc_res_id ;
typedef int bfd_byte ;


 int RES_TYPE_BITMAP ;
 int RES_TYPE_FONT ;
 int RES_TYPE_ICON ;
 int RES_TYPE_MESSAGETABLE ;
 int RES_TYPE_RCDATA ;
 int * bin_to_res_accelerators (int *,int const*,int ) ;
 int * bin_to_res_cursor (int *,int const*,int ) ;
 int * bin_to_res_dialog (int *,int const*,int ) ;
 int * bin_to_res_fontdir (int *,int const*,int ) ;
 int * bin_to_res_generic (int *,int ,int const*,int ) ;
 int * bin_to_res_group_cursor (int *,int const*,int ) ;
 int * bin_to_res_group_icon (int *,int const*,int ) ;
 int * bin_to_res_menu (int *,int const*,int ) ;
 int * bin_to_res_rcdata (int *,int const*,int ,int ) ;
 int * bin_to_res_string (int *,int const*,int ) ;
 int * bin_to_res_toolbar (int *,int const*,int ) ;
 int * bin_to_res_userdata (int *,int const*,int ) ;
 int * bin_to_res_version (int *,int const*,int ) ;

rc_res_resource *
bin_to_res (windres_bfd *wrbfd, rc_res_id type, const bfd_byte *data,
     rc_uint_type length)
{
  if (type.named)
    return bin_to_res_userdata (wrbfd, data, length);
  else
    {
      switch (type.u.id)
 {
 default:
   return bin_to_res_userdata (wrbfd, data, length);
 case 140:
   return bin_to_res_cursor (wrbfd, data, length);
 case 141:
   return bin_to_res_generic (wrbfd, RES_TYPE_BITMAP, data, length);
 case 134:
   return bin_to_res_generic (wrbfd, RES_TYPE_ICON, data, length);
 case 133:
   return bin_to_res_menu (wrbfd, data, length);
 case 139:
   return bin_to_res_dialog (wrbfd, data, length);
 case 130:
   return bin_to_res_string (wrbfd, data, length);
 case 137:
   return bin_to_res_fontdir (wrbfd, data, length);
 case 138:
   return bin_to_res_generic (wrbfd, RES_TYPE_FONT, data, length);
 case 142:
   return bin_to_res_accelerators (wrbfd, data, length);
 case 131:
   return bin_to_res_rcdata (wrbfd, data, length, RES_TYPE_RCDATA);
 case 132:
   return bin_to_res_generic (wrbfd, RES_TYPE_MESSAGETABLE, data, length);
 case 136:
   return bin_to_res_group_cursor (wrbfd, data, length);
 case 135:
   return bin_to_res_group_icon (wrbfd, data, length);
 case 128:
   return bin_to_res_version (wrbfd, data, length);
 case 129:
   return bin_to_res_toolbar (wrbfd, data, length);

 }
    }
}
