
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_inode {int i_gl; } ;
struct gfs2_ea_request {int dummy; } ;
struct gfs2_ea_header {int dummy; } ;
struct ea_set {scalar_t__ es_el; scalar_t__ ea_split; int es_bh; struct gfs2_ea_header* es_ea; } ;


 int ea_set_remove_stuffed (struct gfs2_inode*,scalar_t__) ;
 struct gfs2_ea_header* ea_split_ea (struct gfs2_ea_header*) ;
 int ea_write (struct gfs2_inode*,struct gfs2_ea_header*,struct gfs2_ea_request*) ;
 int gfs2_trans_add_meta (int ,int ) ;

__attribute__((used)) static int ea_set_simple_alloc(struct gfs2_inode *ip,
          struct gfs2_ea_request *er, void *private)
{
 struct ea_set *es = private;
 struct gfs2_ea_header *ea = es->es_ea;
 int error;

 gfs2_trans_add_meta(ip->i_gl, es->es_bh);

 if (es->ea_split)
  ea = ea_split_ea(ea);

 error = ea_write(ip, ea, er);
 if (error)
  return error;

 if (es->es_el)
  ea_set_remove_stuffed(ip, es->es_el);

 return 0;
}
