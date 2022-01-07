
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int t_flags; int * t_dqinfo; int t_ticket; } ;
typedef TYPE_1__ xfs_trans_t ;
typedef int xfs_nlink_t ;
typedef int xfs_inode_t ;
typedef int xfs_dev_t ;
typedef int xfs_buf_t ;
typedef int uint ;
typedef int prid_t ;
typedef int mode_t ;
typedef scalar_t__ boolean_t ;


 int ASSERT (int) ;
 scalar_t__ B_FALSE ;
 int ENOSPC ;
 int XFS_ERROR (int ) ;
 int XFS_TRANS_DQ_DIRTY ;
 int XFS_TRANS_PERM_LOG_RES ;
 int xfs_buf_relse (int *) ;
 int xfs_ialloc (TYPE_1__*,int *,int ,int ,int ,int ,int,int **,scalar_t__*,int **) ;
 int xfs_log_ticket_put (int ) ;
 int xfs_trans_bhold (TYPE_1__*,int *) ;
 int xfs_trans_bjoin (TYPE_1__*,int *) ;
 int xfs_trans_commit (TYPE_1__*,int ) ;
 TYPE_1__* xfs_trans_dup (TYPE_1__*) ;
 int xfs_trans_free_dqinfo (TYPE_1__*) ;
 int xfs_trans_get_log_count (TYPE_1__*) ;
 int xfs_trans_get_log_res (TYPE_1__*) ;
 int xfs_trans_reserve (TYPE_1__*,int ,int,int ,int,int) ;

int
xfs_dir_ialloc(
 xfs_trans_t **tpp,

 xfs_inode_t *dp,

 mode_t mode,
 xfs_nlink_t nlink,
 xfs_dev_t rdev,
 prid_t prid,
 int okalloc,
 xfs_inode_t **ipp,

 int *committed)

{
 xfs_trans_t *tp;
 xfs_trans_t *ntp;
 xfs_inode_t *ip;
 xfs_buf_t *ialloc_context = ((void*)0);
 boolean_t call_again = B_FALSE;
 int code;
 uint log_res;
 uint log_count;
 void *dqinfo;
 uint tflags;

 tp = *tpp;
 ASSERT(tp->t_flags & XFS_TRANS_PERM_LOG_RES);
 code = xfs_ialloc(tp, dp, mode, nlink, rdev, prid, okalloc,
     &ialloc_context, &call_again, &ip);






 if (code) {
  *ipp = ((void*)0);
  return code;
 }
 if (!call_again && (ip == ((void*)0))) {
  *ipp = ((void*)0);
  return XFS_ERROR(ENOSPC);
 }







 if (call_again) {
  xfs_trans_bhold(tp, ialloc_context);




  log_res = xfs_trans_get_log_res(tp);
  log_count = xfs_trans_get_log_count(tp);






  dqinfo = ((void*)0);
  tflags = 0;
  if (tp->t_dqinfo) {
   dqinfo = (void *)tp->t_dqinfo;
   tp->t_dqinfo = ((void*)0);
   tflags = tp->t_flags & XFS_TRANS_DQ_DIRTY;
   tp->t_flags &= ~(XFS_TRANS_DQ_DIRTY);
  }

  ntp = xfs_trans_dup(tp);
  code = xfs_trans_commit(tp, 0);
  tp = ntp;
  if (committed != ((void*)0)) {
   *committed = 1;
  }





  if (code) {
   xfs_buf_relse(ialloc_context);
   if (dqinfo) {
    tp->t_dqinfo = dqinfo;
    xfs_trans_free_dqinfo(tp);
   }
   *tpp = ntp;
   *ipp = ((void*)0);
   return code;
  }





  xfs_log_ticket_put(tp->t_ticket);
  code = xfs_trans_reserve(tp, 0, log_res, 0,
      XFS_TRANS_PERM_LOG_RES, log_count);



  if (dqinfo) {
   tp->t_dqinfo = dqinfo;
   tp->t_flags |= tflags;
  }

  if (code) {
   xfs_buf_relse(ialloc_context);
   *tpp = ntp;
   *ipp = ((void*)0);
   return code;
  }
  xfs_trans_bjoin(tp, ialloc_context);






  code = xfs_ialloc(tp, dp, mode, nlink, rdev, prid,
      okalloc, &ialloc_context, &call_again, &ip);





  if (code) {
   *tpp = tp;
   *ipp = ((void*)0);
   return code;
  }
  ASSERT ((!call_again) && (ip != ((void*)0)));

 } else {
  if (committed != ((void*)0)) {
   *committed = 0;
  }
 }

 *ipp = ip;
 *tpp = tp;

 return 0;
}
