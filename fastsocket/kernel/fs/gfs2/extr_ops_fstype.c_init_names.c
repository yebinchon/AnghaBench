
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {char* sb_lockproto; char* sb_locktable; } ;
struct TYPE_4__ {char* ar_lockproto; char* ar_locktable; } ;
struct gfs2_sbd {int sd_fsb2bb_shift; char* sd_proto_name; char* sd_table_name; TYPE_2__* sd_vfs; TYPE_3__ sd_sb; TYPE_1__ sd_args; } ;
struct TYPE_5__ {char* s_id; } ;


 int GFS2_FSNAME_LEN ;
 int GFS2_SB_ADDR ;
 int gfs2_check_sb (struct gfs2_sbd*,TYPE_3__*,int) ;
 int gfs2_read_super (struct gfs2_sbd*,int) ;
 char* strchr (char*,char) ;
 int strlcpy (char*,char*,int ) ;

__attribute__((used)) static int init_names(struct gfs2_sbd *sdp, int silent)
{
 char *proto, *table;
 int error = 0;

 proto = sdp->sd_args.ar_lockproto;
 table = sdp->sd_args.ar_locktable;



 if (!proto[0] || !table[0]) {
  error = gfs2_read_super(sdp, GFS2_SB_ADDR >> sdp->sd_fsb2bb_shift);
  if (error)
   return error;

  error = gfs2_check_sb(sdp, &sdp->sd_sb, silent);
  if (error)
   goto out;

  if (!proto[0])
   proto = sdp->sd_sb.sb_lockproto;
  if (!table[0])
   table = sdp->sd_sb.sb_locktable;
 }

 if (!table[0])
  table = sdp->sd_vfs->s_id;

 strlcpy(sdp->sd_proto_name, proto, GFS2_FSNAME_LEN);
 strlcpy(sdp->sd_table_name, table, GFS2_FSNAME_LEN);

 table = sdp->sd_table_name;
 while ((table = strchr(table, '/')))
  *table = '_';

out:
 return error;
}
