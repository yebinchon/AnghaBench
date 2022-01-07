
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {int member_0; } ;
typedef TYPE_2__ zio_cksum_t ;
typedef int uint64_t ;
struct drr_begin {scalar_t__ drr_magic; scalar_t__ drr_versioninfo; scalar_t__ drr_creation_time; scalar_t__ drr_type; scalar_t__ drr_flags; scalar_t__ drr_toguid; scalar_t__ drr_fromguid; char* drr_toname; } ;
struct TYPE_19__ {int byteswap; scalar_t__ isprefix; } ;
typedef TYPE_3__ recvflags_t ;
typedef int nvlist_t ;
typedef int nonpackage_sendfs ;
typedef int libzfs_handle_t ;
typedef int errbuf ;
typedef int drr ;
struct TYPE_17__ {struct drr_begin drr_begin; } ;
struct TYPE_20__ {scalar_t__ drr_type; scalar_t__ drr_payloadlen; TYPE_1__ drr_u; } ;
typedef TYPE_4__ dmu_replay_record_t ;
typedef int avl_tree_t ;


 scalar_t__ BSWAP_32 (scalar_t__) ;
 scalar_t__ BSWAP_64 (scalar_t__) ;
 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ DMU_BACKUP_MAGIC ;
 int DMU_COMPOUNDSTREAM ;
 int DMU_GET_FEATUREFLAGS (scalar_t__) ;
 int DMU_GET_STREAM_HDRTYPE (scalar_t__) ;
 int DMU_STREAM_SUPPORTED (int ) ;
 int DMU_SUBSTREAM ;
 scalar_t__ DRR_BEGIN ;
 scalar_t__ DRR_END ;
 int ENODATA ;
 int EZFS_BADSTREAM ;
 int EZFS_NOENT ;
 int TEXT_DOMAIN ;
 int VERIFY (int ) ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_TYPE_DATASET ;
 int assert (int) ;
 int bzero (TYPE_2__*,int) ;
 char* dgettext (int ,char*) ;
 int fletcher_4_incremental_byteswap (TYPE_4__*,int,TYPE_2__*) ;
 int recv_read (int *,int,TYPE_4__*,int,int ,TYPE_2__*) ;
 int snprintf (char*,int,char*) ;
 char* strchr (char*,char) ;
 int strlcpy (char*,char*,int) ;
 int zfs_dataset_exists (int *,char const*,int ) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,char*,...) ;
 int zfs_receive_one (int *,int,char const*,char const*,TYPE_3__*,TYPE_4__*,TYPE_4__*,char const*,int *,int *,char**,int,int *,char const*) ;
 int zfs_receive_package (int *,int,char const*,TYPE_3__*,TYPE_4__*,TYPE_2__*,char**,int,int *) ;

__attribute__((used)) static int
zfs_receive_impl(libzfs_handle_t *hdl, const char *tosnap,
    const char *originsnap, recvflags_t *flags, int infd, const char *sendfs,
    nvlist_t *stream_nv, avl_tree_t *stream_avl, char **top_zfs, int cleanup_fd,
    uint64_t *action_handlep, const char *finalsnap)
{
 int err;
 dmu_replay_record_t drr, drr_noswap;
 struct drr_begin *drrb = &drr.drr_u.drr_begin;
 char errbuf[1024];
 zio_cksum_t zcksum = { 0 };
 uint64_t featureflags;
 int hdrtype;

 (void) snprintf(errbuf, sizeof (errbuf), dgettext(TEXT_DOMAIN,
     "cannot receive"));

 if (flags->isprefix &&
     !zfs_dataset_exists(hdl, tosnap, ZFS_TYPE_DATASET)) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN, "specified fs "
      "(%s) does not exist"), tosnap);
  return (zfs_error(hdl, EZFS_NOENT, errbuf));
 }
 if (originsnap &&
     !zfs_dataset_exists(hdl, originsnap, ZFS_TYPE_DATASET)) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN, "specified origin fs "
      "(%s) does not exist"), originsnap);
  return (zfs_error(hdl, EZFS_NOENT, errbuf));
 }


 if (0 != (err = recv_read(hdl, infd, &drr, sizeof (drr), B_FALSE,
     &zcksum)))
  return (err);

 if (drr.drr_type == DRR_END || drr.drr_type == BSWAP_32(DRR_END)) {

  return (ENODATA);
 }


 drr_noswap = drr;

 flags->byteswap = B_FALSE;
 if (drrb->drr_magic == BSWAP_64(DMU_BACKUP_MAGIC)) {




  bzero(&zcksum, sizeof (zio_cksum_t));
  (void) fletcher_4_incremental_byteswap(&drr,
      sizeof (drr), &zcksum);
  flags->byteswap = B_TRUE;

  drr.drr_type = BSWAP_32(drr.drr_type);
  drr.drr_payloadlen = BSWAP_32(drr.drr_payloadlen);
  drrb->drr_magic = BSWAP_64(drrb->drr_magic);
  drrb->drr_versioninfo = BSWAP_64(drrb->drr_versioninfo);
  drrb->drr_creation_time = BSWAP_64(drrb->drr_creation_time);
  drrb->drr_type = BSWAP_32(drrb->drr_type);
  drrb->drr_flags = BSWAP_32(drrb->drr_flags);
  drrb->drr_toguid = BSWAP_64(drrb->drr_toguid);
  drrb->drr_fromguid = BSWAP_64(drrb->drr_fromguid);
 }

 if (drrb->drr_magic != DMU_BACKUP_MAGIC || drr.drr_type != DRR_BEGIN) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN, "invalid "
      "stream (bad magic number)"));
  return (zfs_error(hdl, EZFS_BADSTREAM, errbuf));
 }

 featureflags = DMU_GET_FEATUREFLAGS(drrb->drr_versioninfo);
 hdrtype = DMU_GET_STREAM_HDRTYPE(drrb->drr_versioninfo);

 if (!DMU_STREAM_SUPPORTED(featureflags) ||
     (hdrtype != DMU_SUBSTREAM && hdrtype != DMU_COMPOUNDSTREAM)) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "stream has unsupported feature, feature flags = %lx"),
      featureflags);
  return (zfs_error(hdl, EZFS_BADSTREAM, errbuf));
 }

 if (strchr(drrb->drr_toname, '@') == ((void*)0)) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN, "invalid "
      "stream (bad snapshot name)"));
  return (zfs_error(hdl, EZFS_BADSTREAM, errbuf));
 }

 if (DMU_GET_STREAM_HDRTYPE(drrb->drr_versioninfo) == DMU_SUBSTREAM) {
  char nonpackage_sendfs[ZFS_MAX_DATASET_NAME_LEN];
  if (sendfs == ((void*)0)) {




   char *cp;
   (void) strlcpy(nonpackage_sendfs,
       drr.drr_u.drr_begin.drr_toname,
       sizeof (nonpackage_sendfs));
   if ((cp = strchr(nonpackage_sendfs, '@')) != ((void*)0))
    *cp = '\0';
   sendfs = nonpackage_sendfs;
   VERIFY(finalsnap == ((void*)0));
  }
  return (zfs_receive_one(hdl, infd, tosnap, originsnap, flags,
      &drr, &drr_noswap, sendfs, stream_nv, stream_avl, top_zfs,
      cleanup_fd, action_handlep, finalsnap));
 } else {
  assert(DMU_GET_STREAM_HDRTYPE(drrb->drr_versioninfo) ==
      DMU_COMPOUNDSTREAM);
  return (zfs_receive_package(hdl, infd, tosnap, flags, &drr,
      &zcksum, top_zfs, cleanup_fd, action_handlep));
 }
}
