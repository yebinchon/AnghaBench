
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_inode {int i_diskflags; int i_inode; } ;
struct gfs2_ea_request {int er_type; char const* er_name; size_t er_data_len; int er_name_len; void* er_data; } ;
struct gfs2_ea_location {int dummy; } ;
struct ea_set {struct gfs2_ea_location* es_el; struct gfs2_ea_request* es_er; } ;
struct TYPE_2__ {scalar_t__ sd_jbsize; } ;


 scalar_t__ DIV_ROUND_UP (size_t,scalar_t__) ;
 int GFS2_DIF_EA_INDIRECT ;
 scalar_t__ GFS2_EAREQ_SIZE_STUFFED (struct gfs2_ea_request*) ;
 TYPE_1__* GFS2_SB (int *) ;
 int ea_alloc_skeleton (struct gfs2_inode*,struct gfs2_ea_request*,unsigned int,int ,struct gfs2_ea_location*) ;
 int ea_foreach (struct gfs2_inode*,int ,struct ea_set*) ;
 int ea_set_block ;
 int ea_set_simple ;
 int memset (struct ea_set*,int ,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int ea_set_i(struct gfs2_inode *ip, int type, const char *name,
      const void *value, size_t size, struct gfs2_ea_location *el)
{
 struct gfs2_ea_request er;
 struct ea_set es;
 unsigned int blks = 2;
 int error;

 er.er_type = type;
 er.er_name = name;
 er.er_data = (void *)value;
 er.er_name_len = strlen(name);
 er.er_data_len = size;

 memset(&es, 0, sizeof(struct ea_set));
 es.es_er = &er;
 es.es_el = el;

 error = ea_foreach(ip, ea_set_simple, &es);
 if (error > 0)
  return 0;
 if (error)
  return error;

 if (!(ip->i_diskflags & GFS2_DIF_EA_INDIRECT))
  blks++;
 if (GFS2_EAREQ_SIZE_STUFFED(&er) > GFS2_SB(&ip->i_inode)->sd_jbsize)
  blks += DIV_ROUND_UP(er.er_data_len, GFS2_SB(&ip->i_inode)->sd_jbsize);

 return ea_alloc_skeleton(ip, &er, blks, ea_set_block, el);
}
