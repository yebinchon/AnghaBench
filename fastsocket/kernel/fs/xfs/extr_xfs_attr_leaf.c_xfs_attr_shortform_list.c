
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_25__ {int i_mount; TYPE_3__* i_afp; } ;
typedef TYPE_4__ xfs_inode_t ;
struct TYPE_23__ {int count; } ;
struct TYPE_26__ {TYPE_2__ hdr; TYPE_7__* list; } ;
typedef TYPE_5__ xfs_attr_shortform_t ;
struct TYPE_27__ {int entno; scalar_t__ hash; size_t namelen; int valuelen; int * name; int flags; } ;
typedef TYPE_6__ xfs_attr_sf_sort_t ;
struct TYPE_28__ {size_t namelen; int valuelen; int flags; int * nameval; } ;
typedef TYPE_7__ xfs_attr_sf_entry_t ;
struct TYPE_29__ {scalar_t__ bufsize; int (* put_listent ) (TYPE_8__*,int ,int *,int,int,int *) ;scalar_t__ seen_enough; TYPE_4__* dp; TYPE_9__* cursor; } ;
typedef TYPE_8__ xfs_attr_list_context_t ;
struct TYPE_30__ {int initted; scalar_t__ hashval; int offset; scalar_t__ blkno; } ;
typedef TYPE_9__ attrlist_cursor_kern_t ;
struct TYPE_22__ {scalar_t__ if_data; } ;
struct TYPE_24__ {scalar_t__ if_bytes; TYPE_1__ if_u1; } ;


 int ASSERT (int ) ;
 int EFSCORRUPTED ;
 int KM_NOFS ;
 int KM_SLEEP ;
 TYPE_7__* XFS_ATTR_SF_NEXTENTRY (TYPE_7__*) ;
 int XFS_CORRUPTION_ERROR (char*,int ,int ,TYPE_7__*) ;
 int XFS_ERRLEVEL_LOW ;
 int XFS_ERROR (int ) ;
 scalar_t__ XFS_ISRESET_CURSOR (TYPE_9__*) ;
 TYPE_6__* kmem_alloc (int,int) ;
 int kmem_free (TYPE_6__*) ;
 int stub1 (TYPE_8__*,int ,int *,int,int,int *) ;
 int stub2 (TYPE_8__*,int ,int *,size_t,int,int *) ;
 int trace_xfs_attr_list_sf (TYPE_8__*) ;
 int trace_xfs_attr_list_sf_all (TYPE_8__*) ;
 scalar_t__ unlikely (int) ;
 int xfs_attr_shortform_compare ;
 scalar_t__ xfs_da_hashname (int *,size_t) ;
 int xfs_sort (TYPE_6__*,int,int,int ) ;

int
xfs_attr_shortform_list(xfs_attr_list_context_t *context)
{
 attrlist_cursor_kern_t *cursor;
 xfs_attr_sf_sort_t *sbuf, *sbp;
 xfs_attr_shortform_t *sf;
 xfs_attr_sf_entry_t *sfe;
 xfs_inode_t *dp;
 int sbsize, nsbuf, count, i;
 int error;

 ASSERT(context != ((void*)0));
 dp = context->dp;
 ASSERT(dp != ((void*)0));
 ASSERT(dp->i_afp != ((void*)0));
 sf = (xfs_attr_shortform_t *)dp->i_afp->if_u1.if_data;
 ASSERT(sf != ((void*)0));
 if (!sf->hdr.count)
  return(0);
 cursor = context->cursor;
 ASSERT(cursor != ((void*)0));

 trace_xfs_attr_list_sf(context);
 if (context->bufsize == 0 ||
     (XFS_ISRESET_CURSOR(cursor) &&
             (dp->i_afp->if_bytes + sf->hdr.count * 16) < context->bufsize)) {
  for (i = 0, sfe = &sf->list[0]; i < sf->hdr.count; i++) {
   error = context->put_listent(context,
        sfe->flags,
        sfe->nameval,
        (int)sfe->namelen,
        (int)sfe->valuelen,
        &sfe->nameval[sfe->namelen]);





   if (context->seen_enough)
    break;

   if (error)
    return error;
   sfe = XFS_ATTR_SF_NEXTENTRY(sfe);
  }
  trace_xfs_attr_list_sf_all(context);
  return(0);
 }


 if (context->bufsize == 0)
  return 0;




 sbsize = sf->hdr.count * sizeof(*sbuf);
 sbp = sbuf = kmem_alloc(sbsize, KM_SLEEP | KM_NOFS);





 nsbuf = 0;
 for (i = 0, sfe = &sf->list[0]; i < sf->hdr.count; i++) {
  if (unlikely(
      ((char *)sfe < (char *)sf) ||
      ((char *)sfe >= ((char *)sf + dp->i_afp->if_bytes)))) {
   XFS_CORRUPTION_ERROR("xfs_attr_shortform_list",
          XFS_ERRLEVEL_LOW,
          context->dp->i_mount, sfe);
   kmem_free(sbuf);
   return XFS_ERROR(EFSCORRUPTED);
  }

  sbp->entno = i;
  sbp->hash = xfs_da_hashname(sfe->nameval, sfe->namelen);
  sbp->name = sfe->nameval;
  sbp->namelen = sfe->namelen;

  sbp->valuelen = sfe->valuelen;
  sbp->flags = sfe->flags;
  sfe = XFS_ATTR_SF_NEXTENTRY(sfe);
  sbp++;
  nsbuf++;
 }




 xfs_sort(sbuf, nsbuf, sizeof(*sbuf), xfs_attr_shortform_compare);




 count = 0;
 cursor->initted = 1;
 cursor->blkno = 0;
 for (sbp = sbuf, i = 0; i < nsbuf; i++, sbp++) {
  if (sbp->hash == cursor->hashval) {
   if (cursor->offset == count) {
    break;
   }
   count++;
  } else if (sbp->hash > cursor->hashval) {
   break;
  }
 }
 if (i == nsbuf) {
  kmem_free(sbuf);
  return(0);
 }




 for ( ; i < nsbuf; i++, sbp++) {
  if (cursor->hashval != sbp->hash) {
   cursor->hashval = sbp->hash;
   cursor->offset = 0;
  }
  error = context->put_listent(context,
     sbp->flags,
     sbp->name,
     sbp->namelen,
     sbp->valuelen,
     &sbp->name[sbp->namelen]);
  if (error)
   return error;
  if (context->seen_enough)
   break;
  cursor->offset++;
 }

 kmem_free(sbuf);
 return(0);
}
