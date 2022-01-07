
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct utimbuf {int modtime; int actime; } ;
typedef int off_t ;
struct TYPE_6__ {int type; char* name; char* path; } ;
typedef TYPE_1__ GNode ;
typedef int Boolean ;


 int Arch_Touch (TYPE_1__*) ;
 int Arch_TouchLib (TYPE_1__*) ;
 scalar_t__ EAGAIN ;
 scalar_t__ NoExecute (TYPE_1__*) ;
 int OP_ARCHV ;
 int OP_EXEC ;
 int OP_JOIN ;
 int OP_LIB ;
 int OP_OPTIONAL ;
 int OP_PHONY ;
 int OP_SPECIAL ;
 int OP_USE ;
 int OP_USEBEFORE ;
 int O_CREAT ;
 int O_RDWR ;
 int SEEK_SET ;
 int close (int) ;
 scalar_t__ errno ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*,...) ;
 int lseek (int,int ,int ) ;
 int now ;
 int open (char*,int,int) ;
 int read (int,char*,int) ;
 int stdout ;
 char* strerror (scalar_t__) ;
 scalar_t__ utime (char*,struct utimbuf*) ;
 int write (int,char*,int) ;

void
Job_Touch(GNode *gn, Boolean silent)
{
    int streamID;
    struct utimbuf times;

    if (gn->type & (OP_JOIN|OP_USE|OP_USEBEFORE|OP_EXEC|OP_OPTIONAL|
 OP_SPECIAL|OP_PHONY)) {




 return;
    }

    if (!silent || NoExecute(gn)) {
 (void)fprintf(stdout, "touch %s\n", gn->name);
 (void)fflush(stdout);
    }

    if (NoExecute(gn)) {
 return;
    }

    if (gn->type & OP_ARCHV) {
 Arch_Touch(gn);
    } else if (gn->type & OP_LIB) {
 Arch_TouchLib(gn);
    } else {
 char *file = gn->path ? gn->path : gn->name;

 times.actime = times.modtime = now;
 if (utime(file, &times) < 0){
     streamID = open(file, O_RDWR | O_CREAT, 0666);

     if (streamID >= 0) {
  char c;





  if (read(streamID, &c, 1) == 1) {
      (void)lseek(streamID, (off_t)0, SEEK_SET);
      while (write(streamID, &c, 1) == -1 && errno == EAGAIN)
   continue;
  }

  (void)close(streamID);
     } else {
  (void)fprintf(stdout, "*** couldn't touch %s: %s",
          file, strerror(errno));
  (void)fflush(stdout);
     }
 }
    }
}
