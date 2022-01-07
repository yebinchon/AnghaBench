
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int xfs_off_t ;
struct TYPE_25__ {scalar_t__ m_dirdatablk; } ;
typedef TYPE_5__ xfs_mount_t ;
struct TYPE_23__ {scalar_t__ di_size; } ;
struct TYPE_21__ {int * if_data; } ;
struct TYPE_22__ {int if_flags; scalar_t__ if_bytes; TYPE_1__ if_u1; } ;
struct TYPE_26__ {int i_ino; TYPE_3__ i_d; TYPE_2__ i_df; TYPE_5__* i_mount; } ;
typedef TYPE_6__ xfs_inode_t ;
typedef int xfs_ino_t ;
struct TYPE_24__ {int count; int parent; int i8count; } ;
struct TYPE_27__ {TYPE_4__ hdr; } ;
typedef TYPE_7__ xfs_dir2_sf_t ;
struct TYPE_28__ {int namelen; scalar_t__ name; } ;
typedef TYPE_8__ xfs_dir2_sf_entry_t ;
typedef int xfs_dir2_dataptr_t ;
typedef scalar_t__ (* filldir_t ) (void*,char*,int,int,int ,int ) ;


 int ASSERT (int) ;
 int DT_DIR ;
 int DT_UNKNOWN ;
 int EIO ;
 int XFS_DIR2_DATA_DOTDOT_OFFSET ;
 int XFS_DIR2_DATA_DOT_OFFSET ;
 int XFS_ERROR (int ) ;
 int XFS_FORCED_SHUTDOWN (TYPE_5__*) ;
 int XFS_IFINLINE ;
 scalar_t__ offsetof (int ,int ) ;
 int parent ;
 scalar_t__ xfs_dir2_dataptr_to_db (TYPE_5__*,int) ;
 int xfs_dir2_db_off_to_dataptr (TYPE_5__*,scalar_t__,int ) ;
 TYPE_8__* xfs_dir2_sf_firstentry (TYPE_7__*) ;
 int xfs_dir2_sf_get_inumber (TYPE_7__*,int *) ;
 int xfs_dir2_sf_get_offset (TYPE_8__*) ;
 scalar_t__ xfs_dir2_sf_hdr_size (int ) ;
 int xfs_dir2_sf_hdr_t ;
 int * xfs_dir2_sf_inumberp (TYPE_8__*) ;
 TYPE_8__* xfs_dir2_sf_nextentry (TYPE_7__*,TYPE_8__*) ;

int
xfs_dir2_sf_getdents(
 xfs_inode_t *dp,
 void *dirent,
 xfs_off_t *offset,
 filldir_t filldir)
{
 int i;
 xfs_mount_t *mp;
 xfs_dir2_dataptr_t off;
 xfs_dir2_sf_entry_t *sfep;
 xfs_dir2_sf_t *sfp;
 xfs_dir2_dataptr_t dot_offset;
 xfs_dir2_dataptr_t dotdot_offset;
 xfs_ino_t ino;

 mp = dp->i_mount;

 ASSERT(dp->i_df.if_flags & XFS_IFINLINE);



 if (dp->i_d.di_size < offsetof(xfs_dir2_sf_hdr_t, parent)) {
  ASSERT(XFS_FORCED_SHUTDOWN(mp));
  return XFS_ERROR(EIO);
 }

 ASSERT(dp->i_df.if_bytes == dp->i_d.di_size);
 ASSERT(dp->i_df.if_u1.if_data != ((void*)0));

 sfp = (xfs_dir2_sf_t *)dp->i_df.if_u1.if_data;

 ASSERT(dp->i_d.di_size >= xfs_dir2_sf_hdr_size(sfp->hdr.i8count));




 if (xfs_dir2_dataptr_to_db(mp, *offset) > mp->m_dirdatablk)
  return 0;







 dot_offset = xfs_dir2_db_off_to_dataptr(mp, mp->m_dirdatablk,
          XFS_DIR2_DATA_DOT_OFFSET);
 dotdot_offset = xfs_dir2_db_off_to_dataptr(mp, mp->m_dirdatablk,
      XFS_DIR2_DATA_DOTDOT_OFFSET);




 if (*offset <= dot_offset) {
  if (filldir(dirent, ".", 1, dot_offset & 0x7fffffff, dp->i_ino, DT_DIR)) {
   *offset = dot_offset & 0x7fffffff;
   return 0;
  }
 }




 if (*offset <= dotdot_offset) {
  ino = xfs_dir2_sf_get_inumber(sfp, &sfp->hdr.parent);
  if (filldir(dirent, "..", 2, dotdot_offset & 0x7fffffff, ino, DT_DIR)) {
   *offset = dotdot_offset & 0x7fffffff;
   return 0;
  }
 }




 sfep = xfs_dir2_sf_firstentry(sfp);
 for (i = 0; i < sfp->hdr.count; i++) {
  off = xfs_dir2_db_off_to_dataptr(mp, mp->m_dirdatablk,
    xfs_dir2_sf_get_offset(sfep));

  if (*offset > off) {
   sfep = xfs_dir2_sf_nextentry(sfp, sfep);
   continue;
  }

  ino = xfs_dir2_sf_get_inumber(sfp, xfs_dir2_sf_inumberp(sfep));
  if (filldir(dirent, (char *)sfep->name, sfep->namelen,
       off & 0x7fffffff, ino, DT_UNKNOWN)) {
   *offset = off & 0x7fffffff;
   return 0;
  }
  sfep = xfs_dir2_sf_nextentry(sfp, sfep);
 }

 *offset = xfs_dir2_db_off_to_dataptr(mp, mp->m_dirdatablk + 1, 0) &
   0x7fffffff;
 return 0;
}
