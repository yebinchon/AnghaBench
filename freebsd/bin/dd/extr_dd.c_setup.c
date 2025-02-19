
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
typedef int cap_rights_t ;
struct TYPE_6__ {char* name; int fd; int flags; int dbsz; int offset; int * db; int * dbp; } ;
struct TYPE_5__ {int start; } ;


 int CAP_FSYNC ;
 int CAP_FTRUNCATE ;
 int CAP_IOCTL ;
 int CAP_READ ;
 int CAP_SEEK ;
 int CAP_WRITE ;
 int CLOCK_MONOTONIC ;
 int C_ASCII ;
 int C_BLOCK ;
 int C_EBCDIC ;
 int C_FDATASYNC ;
 int C_FSYNC ;
 int C_LCASE ;
 int C_NOTRUNC ;
 int C_OF ;
 int C_OFSYNC ;
 int C_PAREVEN ;
 int C_PARITY ;
 int C_PARODD ;
 int C_PARSET ;
 int C_SEEK ;
 int C_UCASE ;
 int C_UNBLOCK ;
 int DEFFILEMODE ;
 unsigned long FIODTYPE ;
 int F_GETFL ;
 int F_SETFL ;
 int ISTAPE ;
 int ISTRUNC ;
 int MAX (size_t,int) ;
 unsigned long MTIOCTOP ;
 int NOREAD ;
 int O_CREAT ;
 int O_FSYNC ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_TRUNC ;
 int O_WRONLY ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int cap_rights_clear (int *,int ) ;
 int cap_rights_init (int *,int ,int ) ;
 int cap_rights_set (int *,int ,...) ;
 int caph_ioctls_limit (int,unsigned long*,int ) ;
 int caph_limit_stderr () ;
 int caph_limit_stdin () ;
 int caph_limit_stdout () ;
 int caph_rights_limit (int,int *) ;
 int* casetab ;
 int cbsz ;
 scalar_t__ clock_gettime (int ,int *) ;
 int* ctab ;
 int ddflags ;
 int err (int,char*,...) ;
 int errx (int,char*) ;
 int fcntl (int,int ,...) ;
 int files_cnt ;
 int ftruncate (int,int) ;
 int getfdtype (TYPE_2__*) ;
 TYPE_2__ in ;
 void* malloc (int) ;
 int nitems (unsigned long*) ;
 void* open (char*,int,int ) ;
 TYPE_2__ out ;
 scalar_t__ parity (int) ;
 int pos_in () ;
 int pos_out () ;
 TYPE_1__ st ;
 int tolower (int) ;
 int toupper (int) ;

__attribute__((used)) static void
setup(void)
{
 u_int cnt;
 int oflags;
 cap_rights_t rights;
 unsigned long cmds[] = { FIODTYPE, MTIOCTOP };

 if (in.name == ((void*)0)) {
  in.name = "stdin";
  in.fd = STDIN_FILENO;
 } else {
  in.fd = open(in.name, O_RDONLY, 0);
  if (in.fd == -1)
   err(1, "%s", in.name);
 }

 getfdtype(&in);

 cap_rights_init(&rights, CAP_READ, CAP_SEEK);
 if (caph_rights_limit(in.fd, &rights) == -1)
  err(1, "unable to limit capability rights");

 if (files_cnt > 1 && !(in.flags & ISTAPE))
  errx(1, "files is not supported for non-tape devices");

 cap_rights_set(&rights, CAP_FTRUNCATE, CAP_IOCTL, CAP_WRITE);
 if (ddflags & (C_FDATASYNC | C_FSYNC))
  cap_rights_set(&rights, CAP_FSYNC);
 if (out.name == ((void*)0)) {

  out.fd = STDOUT_FILENO;
  out.name = "stdout";
  if (ddflags & C_OFSYNC) {
   oflags = fcntl(out.fd, F_GETFL);
   if (oflags == -1)
    err(1, "unable to get fd flags for stdout");
   oflags |= O_FSYNC;
   if (fcntl(out.fd, F_SETFL, oflags) == -1)
    err(1, "unable to set fd flags for stdout");
  }
 } else {
  oflags = O_CREAT;
  if (!(ddflags & (C_SEEK | C_NOTRUNC)))
   oflags |= O_TRUNC;
  if (ddflags & C_OFSYNC)
   oflags |= O_FSYNC;
  out.fd = open(out.name, O_RDWR | oflags, DEFFILEMODE);





  if (out.fd == -1) {
   out.fd = open(out.name, O_WRONLY | oflags, DEFFILEMODE);
   out.flags |= NOREAD;
   cap_rights_clear(&rights, CAP_READ);
  }
  if (out.fd == -1)
   err(1, "%s", out.name);
 }

 getfdtype(&out);

 if (caph_rights_limit(out.fd, &rights) == -1)
  err(1, "unable to limit capability rights");
 if (caph_ioctls_limit(out.fd, cmds, nitems(cmds)) == -1)
  err(1, "unable to limit capability rights");

 if (in.fd != STDIN_FILENO && out.fd != STDIN_FILENO) {
  if (caph_limit_stdin() == -1)
   err(1, "unable to limit capability rights");
 }

 if (in.fd != STDOUT_FILENO && out.fd != STDOUT_FILENO) {
  if (caph_limit_stdout() == -1)
   err(1, "unable to limit capability rights");
 }

 if (in.fd != STDERR_FILENO && out.fd != STDERR_FILENO) {
  if (caph_limit_stderr() == -1)
   err(1, "unable to limit capability rights");
 }





 if (!(ddflags & (C_BLOCK | C_UNBLOCK))) {
  if ((in.db = malloc((size_t)out.dbsz + in.dbsz - 1)) == ((void*)0))
   err(1, "input buffer");
  out.db = in.db;
 } else if ((in.db = malloc(MAX((size_t)in.dbsz, cbsz) + cbsz)) == ((void*)0) ||
     (out.db = malloc(out.dbsz + cbsz)) == ((void*)0))
  err(1, "output buffer");


 in.dbp = in.db;
 out.dbp = out.db;


 if (in.offset)
  pos_in();
 if (out.offset)
  pos_out();





 if ((ddflags & (C_OF | C_SEEK | C_NOTRUNC)) == (C_OF | C_SEEK) &&
     out.flags & ISTRUNC)
  if (ftruncate(out.fd, out.offset * out.dbsz) == -1)
   err(1, "truncating %s", out.name);

 if (ddflags & (C_LCASE | C_UCASE | C_ASCII | C_EBCDIC | C_PARITY)) {
  if (ctab != ((void*)0)) {
   for (cnt = 0; cnt <= 0377; ++cnt)
    casetab[cnt] = ctab[cnt];
  } else {
   for (cnt = 0; cnt <= 0377; ++cnt)
    casetab[cnt] = cnt;
  }
  if ((ddflags & C_PARITY) && !(ddflags & C_ASCII)) {




   for (cnt = 200; cnt <= 0377; ++cnt)
    casetab[cnt] = casetab[cnt & 0x7f];
  }
  if (ddflags & C_LCASE) {
   for (cnt = 0; cnt <= 0377; ++cnt)
    casetab[cnt] = tolower(casetab[cnt]);
  } else if (ddflags & C_UCASE) {
   for (cnt = 0; cnt <= 0377; ++cnt)
    casetab[cnt] = toupper(casetab[cnt]);
  }
  if ((ddflags & C_PARITY)) {




   for (cnt = 0; cnt <= 0377; ++cnt)
    casetab[cnt] = casetab[cnt] & 0x7f;
  }
  if ((ddflags & C_PARSET)) {
   for (cnt = 0; cnt <= 0377; ++cnt)
    casetab[cnt] = casetab[cnt] | 0x80;
  }
  if ((ddflags & C_PAREVEN)) {
   for (cnt = 0; cnt <= 0377; ++cnt)
    if (parity(casetab[cnt]))
     casetab[cnt] = casetab[cnt] | 0x80;
  }
  if ((ddflags & C_PARODD)) {
   for (cnt = 0; cnt <= 0377; ++cnt)
    if (!parity(casetab[cnt]))
     casetab[cnt] = casetab[cnt] | 0x80;
  }

  ctab = casetab;
 }

 if (clock_gettime(CLOCK_MONOTONIC, &st.start))
  err(1, "clock_gettime");
}
