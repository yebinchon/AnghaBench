
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_inode {int dummy; } ;
struct gfs2_ea_location {int el_bh; int el_ea; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int GFS2_EATYPE_SYS ;
 int GFS2_EA_DATA_LEN (int ) ;
 int brelse (int ) ;
 int gfs2_ea_find (struct gfs2_inode*,int ,char const*,struct gfs2_ea_location*) ;
 int gfs2_ea_get_copy (struct gfs2_inode*,struct gfs2_ea_location*,char*,int) ;
 char* kmalloc (int,int ) ;

int gfs2_xattr_acl_get(struct gfs2_inode *ip, const char *name, char **ppdata)
{
 struct gfs2_ea_location el;
 int error;
 int len;
 char *data;

 error = gfs2_ea_find(ip, GFS2_EATYPE_SYS, name, &el);
 if (error)
  return error;
 if (!el.el_ea)
  goto out;
 if (!GFS2_EA_DATA_LEN(el.el_ea))
  goto out;

 len = GFS2_EA_DATA_LEN(el.el_ea);
 data = kmalloc(len, GFP_NOFS);
 error = -ENOMEM;
 if (data == ((void*)0))
  goto out;

 error = gfs2_ea_get_copy(ip, &el, data, len);
 if (error == 0)
  error = len;
 *ppdata = data;
out:
 brelse(el.el_bh);
 return error;
}
