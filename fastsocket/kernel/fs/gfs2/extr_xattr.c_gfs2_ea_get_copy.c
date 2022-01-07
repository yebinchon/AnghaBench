
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_inode {int dummy; } ;
struct gfs2_ea_location {int el_ea; } ;


 int ERANGE ;
 int GFS2_EA2DATA (int ) ;
 size_t GFS2_EA_DATA_LEN (int ) ;
 scalar_t__ GFS2_EA_IS_STUFFED (int ) ;
 int ea_get_unstuffed (struct gfs2_inode*,int ,char*) ;
 int memcpy (char*,int ,size_t) ;

__attribute__((used)) static int gfs2_ea_get_copy(struct gfs2_inode *ip, struct gfs2_ea_location *el,
       char *data, size_t size)
{
 int ret;
 size_t len = GFS2_EA_DATA_LEN(el->el_ea);
 if (len > size)
  return -ERANGE;

 if (GFS2_EA_IS_STUFFED(el->el_ea)) {
  memcpy(data, GFS2_EA2DATA(el->el_ea), len);
  return len;
 }
 ret = ea_get_unstuffed(ip, el->el_ea, data);
 if (ret < 0)
  return ret;
 return len;
}
