
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int uint_t ;
typedef int tfile ;
struct TYPE_22__ {scalar_t__ dp_dofversion; } ;
typedef TYPE_1__ dtrace_prog_t ;
struct TYPE_23__ {char const* dt_ld_path; int dt_linktype; int dt_oflags; char const* dt_objcopy_path; int dt_lazyload; int dt_lib_path; } ;
typedef TYPE_2__ dtrace_hdl_t ;
struct TYPE_24__ {char* dir_path; } ;
typedef TYPE_3__ dt_dirpath_t ;
typedef int drti ;
struct TYPE_25__ {int dofh_filesz; } ;
typedef TYPE_4__ dof_hdr_t ;


 scalar_t__ DOF_VERSION_2 ;
 int DTRACE_O_LP64 ;


 int O_CLOEXEC ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int PATH_MAX ;
 int R_OK ;
 int SEEK_SET ;
 scalar_t__ WEXITSTATUS (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 scalar_t__ WTERMSIG (int) ;
 char* _dtrace_libdir ;
 scalar_t__ access (char const*,int ) ;
 char* alloca (size_t) ;
 int asprintf (char**,char*,char const*,char const*) ;
 int close (int) ;
 int dt_link_error (TYPE_2__*,int *,int,int *,char*,...) ;
 TYPE_3__* dt_list_next (int *) ;
 int dt_write (TYPE_2__*,int,TYPE_4__*,int ) ;
 TYPE_4__* dtrace_dof_create (TYPE_2__*,TYPE_1__*,int ) ;
 int dtrace_dof_destroy (TYPE_2__*,TYPE_4__*) ;
 int dtrace_errno (TYPE_2__*) ;
 int dump_elf32 (TYPE_2__*,TYPE_4__*,int) ;
 int dump_elf64 (TYPE_2__*,TYPE_4__*,int) ;
 int errno ;
 int fprintf (int ,char*,char const*) ;
 int free (char*) ;
 scalar_t__ lseek (int,int ,int ) ;
 int mkostemp (char*,int ) ;
 int open64 (char const*,int,int) ;
 scalar_t__ process_obj (TYPE_2__*,char* const,int*) ;
 scalar_t__ rename (char*,char const*) ;
 int snprintf (char*,size_t,char const*,char const*,...) ;
 int stderr ;
 scalar_t__ strcmp (char* const,char const*) ;
 scalar_t__ strerror (int) ;
 scalar_t__ strlen (char* const) ;
 int system (char*) ;
 int unlink (char* const) ;

int
dtrace_program_link(dtrace_hdl_t *dtp, dtrace_prog_t *pgp, uint_t dflags,
    const char *file, int objc, char *const objv[])
{

 char tfile[PATH_MAX];

 char drti[PATH_MAX];
 dof_hdr_t *dof;
 int fd, status, i, cur;
 char *cmd, tmp;
 size_t len;
 int eprobes = 0, ret = 0;


 if (access(file, R_OK) == 0) {
  fprintf(stderr, "dtrace: target object (%s) already exists. "
      "Please remove the target\ndtrace: object and rebuild all "
      "the source objects if you wish to run the DTrace\n"
      "dtrace: linking process again\n", file);





  return (0);
 }







 if (pgp == ((void*)0)) {
  const char *fmt = "%s -o %s -r";

  len = snprintf(&tmp, 1, fmt, dtp->dt_ld_path, file) + 1;

  for (i = 0; i < objc; i++)
   len += strlen(objv[i]) + 1;

  cmd = alloca(len);

  cur = snprintf(cmd, len, fmt, dtp->dt_ld_path, file);

  for (i = 0; i < objc; i++)
   cur += snprintf(cmd + cur, len - cur, " %s", objv[i]);

  if ((status = system(cmd)) == -1) {
   return (dt_link_error(dtp, ((void*)0), -1, ((void*)0),
       "failed to run %s: %s", dtp->dt_ld_path,
       strerror(errno)));
  }

  if (WIFSIGNALED(status)) {
   return (dt_link_error(dtp, ((void*)0), -1, ((void*)0),
       "failed to link %s: %s failed due to signal %d",
       file, dtp->dt_ld_path, WTERMSIG(status)));
  }

  if (WEXITSTATUS(status) != 0) {
   return (dt_link_error(dtp, ((void*)0), -1, ((void*)0),
       "failed to link %s: %s exited with status %d\n",
       file, dtp->dt_ld_path, WEXITSTATUS(status)));
  }

  for (i = 0; i < objc; i++) {
   if (strcmp(objv[i], file) != 0)
    (void) unlink(objv[i]);
  }

  return (0);
 }

 for (i = 0; i < objc; i++) {
  if (process_obj(dtp, objv[i], &eprobes) != 0)
   return (-1);
 }





 if (eprobes && pgp->dp_dofversion < DOF_VERSION_2)
  pgp->dp_dofversion = DOF_VERSION_2;

 if ((dof = dtrace_dof_create(dtp, pgp, dflags)) == ((void*)0))
  return (-1);
 snprintf(tfile, sizeof(tfile), "%s.XXXXXX", file);
 if ((fd = mkostemp(tfile, O_CLOEXEC)) == -1)
  return (dt_link_error(dtp, ((void*)0), -1, ((void*)0),
      "failed to create temporary file %s: %s",
      tfile, strerror(errno)));






 switch (dtp->dt_linktype) {
 case 129:
  if (dt_write(dtp, fd, dof, dof->dofh_filesz) < dof->dofh_filesz)
   ret = errno;

  if (close(fd) != 0 && ret == 0)
   ret = errno;

  if (ret != 0) {
   return (dt_link_error(dtp, ((void*)0), -1, ((void*)0),
       "failed to write %s: %s", file, strerror(ret)));
  }

  return (0);

 case 128:
  break;

 default:
  return (dt_link_error(dtp, ((void*)0), -1, ((void*)0),
      "invalid link type %u\n", dtp->dt_linktype));
 }







 if (dtp->dt_oflags & DTRACE_O_LP64)
  status = dump_elf64(dtp, dof, fd);
 else
  status = dump_elf32(dtp, dof, fd);







 if (status != 0)
  return (dt_link_error(dtp, ((void*)0), -1, ((void*)0),
      "failed to write %s: %s", tfile,
      strerror(dtrace_errno(dtp))));


 if (!dtp->dt_lazyload) {
  const char *fmt = "%s -o %s -r %s %s";
  dt_dirpath_t *dp = dt_list_next(&dtp->dt_lib_path);

  (void) snprintf(drti, sizeof (drti), "%s/drti.o", dp->dir_path);

  len = snprintf(&tmp, 1, fmt, dtp->dt_ld_path, file, tfile,
      drti) + 1;

  cmd = alloca(len);

  (void) snprintf(cmd, len, fmt, dtp->dt_ld_path, file, tfile,
      drti);

  if ((status = system(cmd)) == -1) {
   ret = dt_link_error(dtp, ((void*)0), fd, ((void*)0),
       "failed to run %s: %s", dtp->dt_ld_path,
       strerror(errno));
   goto done;
  }

  if (WIFSIGNALED(status)) {
   ret = dt_link_error(dtp, ((void*)0), fd, ((void*)0),
       "failed to link %s: %s failed due to signal %d",
       file, dtp->dt_ld_path, WTERMSIG(status));
   goto done;
  }

  if (WEXITSTATUS(status) != 0) {
   ret = dt_link_error(dtp, ((void*)0), fd, ((void*)0),
       "failed to link %s: %s exited with status %d\n",
       file, dtp->dt_ld_path, WEXITSTATUS(status));
   goto done;
  }
  (void) close(fd);
 } else {
  (void) close(fd);
 }

done:
 dtrace_dof_destroy(dtp, dof);





 return (ret);
}
