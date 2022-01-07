
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int outPipe; int inPipe; } ;


 size_t ABORT_ERROR ;
 scalar_t__ DEBUG (int ) ;
 scalar_t__ EAGAIN ;
 int JOB ;
 char* JOB_TOKENS ;
 int Job_error_token ;
 size_t aborting ;
 int debug_file ;
 scalar_t__ errno ;
 int fprintf (int ,char*,int,size_t,char) ;
 int getpid () ;
 scalar_t__ jobTokensRunning ;
 int read (int ,char*,int) ;
 TYPE_1__ tokenWaitJob ;
 int write (int ,char*,int) ;

__attribute__((used)) static void
JobTokenAdd(void)
{
    char tok = JOB_TOKENS[aborting], tok1;

    if (!Job_error_token && aborting == ABORT_ERROR) {
 if (jobTokensRunning == 0)
     return;
 tok = '+';
    }


    while (tok != '+' && read(tokenWaitJob.inPipe, &tok1, 1) == 1)
 continue;

    if (DEBUG(JOB))
 fprintf(debug_file, "(%d) aborting %d, deposit token %c\n",
     getpid(), aborting, tok);
    while (write(tokenWaitJob.outPipe, &tok, 1) == -1 && errno == EAGAIN)
 continue;
}
