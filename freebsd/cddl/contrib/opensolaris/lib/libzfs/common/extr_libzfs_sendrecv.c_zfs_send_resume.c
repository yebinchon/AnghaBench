
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int zfs_name; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_9__ {scalar_t__ progress; int progressastitle; int parsable; scalar_t__ dryrun; scalar_t__ verbose; scalar_t__ compress; scalar_t__ embed_data; scalar_t__ largeblock; } ;
typedef TYPE_2__ sendflags_t ;
typedef int pthread_t ;
struct TYPE_10__ {int pa_fd; int pa_astitle; scalar_t__ pa_size; int pa_parsable; TYPE_1__* pa_zhp; int member_0; } ;
typedef TYPE_3__ progress_arg_t ;
typedef int nvlist_t ;
typedef int longlong_t ;
typedef int libzfs_handle_t ;
typedef int int64_t ;
typedef int errbuf ;
typedef enum lzc_send_flags { ____Placeholder_lzc_send_flags } lzc_send_flags ;
typedef int FILE ;


 int B_FALSE ;
 int B_TRUE ;
 int EZFS_BADBACKUP ;
 int EZFS_BADPATH ;
 int EZFS_FAULT ;
 int LZC_SEND_FLAG_COMPRESS ;
 int LZC_SEND_FLAG_EMBED_DATA ;
 int LZC_SEND_FLAG_LARGE_BLOCK ;
 scalar_t__ MAX (int ,int ) ;
 int TEXT_DOMAIN ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_TYPE_DATASET ;
 char* dgettext (int ,char*) ;
 int errno ;
 int fprintf (int *,char*) ;
 scalar_t__ guid_to_name (int *,char*,scalar_t__,int ,char*) ;
 int lzc_send_resume (int ,char*,int,int,scalar_t__,scalar_t__) ;
 int lzc_send_space (int ,char*,int,scalar_t__*) ;
 scalar_t__ nvlist_exists (int *,char*) ;
 scalar_t__ nvlist_lookup_string (int *,char*,char**) ;
 scalar_t__ nvlist_lookup_uint64 (int *,char*,scalar_t__*) ;
 int nvlist_print (int *,int *) ;
 int pthread_cancel (int ) ;
 int pthread_create (int *,int *,int ,TYPE_3__*) ;
 int pthread_join (int ,int *) ;
 int send_print_verbose (int *,int ,char*,scalar_t__,int ) ;
 int send_progress_thread ;
 int snprintf (char*,int,char*,...) ;
 int * stderr ;
 int * stdout ;
 char* strerror (int ) ;
 int zfs_close (TYPE_1__*) ;
 scalar_t__ zfs_dataset_exists (int *,char*,int ) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,char*,...) ;
 TYPE_1__* zfs_open (int *,char*,int ) ;
 int * zfs_send_resume_token_to_nvlist (int *,char const*) ;
 int zfs_standard_error (int *,int ,char*) ;

int
zfs_send_resume(libzfs_handle_t *hdl, sendflags_t *flags, int outfd,
    const char *resume_token)
{
 char errbuf[1024];
 char *toname;
 char *fromname = ((void*)0);
 uint64_t resumeobj, resumeoff, toguid, fromguid, bytes;
 zfs_handle_t *zhp;
 int error = 0;
 char name[ZFS_MAX_DATASET_NAME_LEN];
 enum lzc_send_flags lzc_flags = 0;
 uint64_t size = 0;
 FILE *fout = (flags->verbose && flags->dryrun) ? stdout : stderr;

 (void) snprintf(errbuf, sizeof (errbuf), dgettext(TEXT_DOMAIN,
     "cannot resume send"));

 nvlist_t *resume_nvl =
     zfs_send_resume_token_to_nvlist(hdl, resume_token);
 if (resume_nvl == ((void*)0)) {




  return (zfs_error(hdl, EZFS_FAULT, errbuf));
 }
 if (flags->verbose) {
  (void) fprintf(fout, dgettext(TEXT_DOMAIN,
      "resume token contents:\n"));
  nvlist_print(fout, resume_nvl);
 }

 if (nvlist_lookup_string(resume_nvl, "toname", &toname) != 0 ||
     nvlist_lookup_uint64(resume_nvl, "object", &resumeobj) != 0 ||
     nvlist_lookup_uint64(resume_nvl, "offset", &resumeoff) != 0 ||
     nvlist_lookup_uint64(resume_nvl, "bytes", &bytes) != 0 ||
     nvlist_lookup_uint64(resume_nvl, "toguid", &toguid) != 0) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "resume token is corrupt"));
  return (zfs_error(hdl, EZFS_FAULT, errbuf));
 }
 fromguid = 0;
 (void) nvlist_lookup_uint64(resume_nvl, "fromguid", &fromguid);

 if (flags->largeblock || nvlist_exists(resume_nvl, "largeblockok"))
  lzc_flags |= LZC_SEND_FLAG_LARGE_BLOCK;
 if (flags->embed_data || nvlist_exists(resume_nvl, "embedok"))
  lzc_flags |= LZC_SEND_FLAG_EMBED_DATA;
 if (flags->compress || nvlist_exists(resume_nvl, "compressok"))
  lzc_flags |= LZC_SEND_FLAG_COMPRESS;

 if (guid_to_name(hdl, toname, toguid, B_FALSE, name) != 0) {
  if (zfs_dataset_exists(hdl, toname, ZFS_TYPE_DATASET)) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "'%s' is no longer the same snapshot used in "
       "the initial send"), toname);
  } else {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "'%s' used in the initial send no longer exists"),
       toname);
  }
  return (zfs_error(hdl, EZFS_BADPATH, errbuf));
 }
 zhp = zfs_open(hdl, name, ZFS_TYPE_DATASET);
 if (zhp == ((void*)0)) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "unable to access '%s'"), name);
  return (zfs_error(hdl, EZFS_BADPATH, errbuf));
 }

 if (fromguid != 0) {
  if (guid_to_name(hdl, toname, fromguid, B_TRUE, name) != 0) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "incremental source %#llx no longer exists"),
       (longlong_t)fromguid);
   return (zfs_error(hdl, EZFS_BADPATH, errbuf));
  }
  fromname = name;
 }

 if (flags->progress || flags->verbose) {
  error = lzc_send_space(zhp->zfs_name, fromname,
      lzc_flags, &size);
  if (error == 0)
   size = MAX(0, (int64_t)(size - bytes));
 }
 if (flags->verbose) {
  send_print_verbose(fout, zhp->zfs_name, fromname,
      size, flags->parsable);
 }

 if (!flags->dryrun) {
  progress_arg_t pa = { 0 };
  pthread_t tid;




  if (flags->progress) {
   pa.pa_zhp = zhp;
   pa.pa_fd = outfd;
   pa.pa_parsable = flags->parsable;
   pa.pa_size = size;
   pa.pa_astitle = flags->progressastitle;

   error = pthread_create(&tid, ((void*)0),
       send_progress_thread, &pa);
   if (error != 0) {
    zfs_close(zhp);
    return (error);
   }
  }

  error = lzc_send_resume(zhp->zfs_name, fromname, outfd,
      lzc_flags, resumeobj, resumeoff);

  if (flags->progress) {
   (void) pthread_cancel(tid);
   (void) pthread_join(tid, ((void*)0));
  }

  char errbuf[1024];
  (void) snprintf(errbuf, sizeof (errbuf), dgettext(TEXT_DOMAIN,
      "warning: cannot send '%s'"), zhp->zfs_name);

  zfs_close(zhp);

  switch (error) {
  case 0:
   return (0);
  case 128:
  case 136:
  case 140:
  case 138:
  case 137:
  case 135:
  case 134:



  case 132:
  case 131:
  case 130:
  case 139:
  case 129:
   zfs_error_aux(hdl, strerror(errno));
   return (zfs_error(hdl, EZFS_BADBACKUP, errbuf));

  default:
   return (zfs_standard_error(hdl, errno, errbuf));
  }
 }


 zfs_close(zhp);

 return (error);
}
