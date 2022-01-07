
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int windres_bfd ;
typedef int rc_uint_type ;
struct TYPE_5__ {int data; int length; } ;
struct TYPE_6__ {int rcdata; int toolbar; int versioninfo; int stringtable; int menu; int group_icon; int fontdir; int dialog; int group_cursor; int cursor; int acc; TYPE_1__ data; } ;
struct TYPE_7__ {int type; TYPE_2__ u; } ;
typedef TYPE_3__ rc_res_resource ;
 int res_to_bin_accelerator (int *,int ,int ) ;
 int res_to_bin_cursor (int *,int ,int ) ;
 int res_to_bin_dialog (int *,int ,int ) ;
 int res_to_bin_fontdir (int *,int ,int ) ;
 int res_to_bin_generic (int *,int ,int ,int ) ;
 int res_to_bin_group_cursor (int *,int ,int ) ;
 int res_to_bin_group_icon (int *,int ,int ) ;
 int res_to_bin_menu (int *,int ,int ) ;
 int res_to_bin_rcdata (int *,int ,int ) ;
 int res_to_bin_stringtable (int *,int ,int ) ;
 int res_to_bin_toolbar (int *,int ,int ) ;
 int res_to_bin_versioninfo (int *,int ,int ) ;

rc_uint_type
res_to_bin (windres_bfd *wrbfd, rc_uint_type off, const rc_res_resource *res)
{
  switch (res->type)
    {
    case 142:
    case 139:
    case 135:
    case 133:
      return res_to_bin_generic (wrbfd, off, res->u.data.length, res->u.data.data);
    case 143:
      return res_to_bin_accelerator (wrbfd, off, res->u.acc);
    case 141:
      return res_to_bin_cursor (wrbfd, off, res->u.cursor);
    case 137:
      return res_to_bin_group_cursor (wrbfd, off, res->u.group_cursor);
    case 140:
      return res_to_bin_dialog (wrbfd, off, res->u.dialog);
    case 138:
      return res_to_bin_fontdir (wrbfd, off, res->u.fontdir);
    case 136:
      return res_to_bin_group_icon (wrbfd, off, res->u.group_icon);
    case 134:
      return res_to_bin_menu (wrbfd, off, res->u.menu);
    case 131:
      return res_to_bin_stringtable (wrbfd, off, res->u.stringtable);
    case 128:
      return res_to_bin_versioninfo (wrbfd, off, res->u.versioninfo);
    case 130:
      return res_to_bin_toolbar (wrbfd, off, res->u.toolbar);
    case 129:
    case 132:
    default:
      return res_to_bin_rcdata (wrbfd, off, res->u.rcdata);
    }
}
