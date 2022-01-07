
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int outPipe; int inPipe; } ;
typedef int Boolean ;


 scalar_t__ DEBUG (int ) ;
 scalar_t__ EAGAIN ;
 int FALSE ;
 int Fatal (char*,...) ;
 int JOB ;
 int TRUE ;
 int aborting ;
 int debug_file ;
 scalar_t__ errno ;
 int fprintf (int ,char*,int,...) ;
 int getpid () ;
 int jobTokensRunning ;
 int maxJobs ;
 int read (int ,char*,int) ;
 int strerror (scalar_t__) ;
 TYPE_1__ tokenWaitJob ;
 scalar_t__ wantToken ;
 int write (int ,char*,int) ;

Boolean
Job_TokenWithdraw(void)
{
    char tok, tok1;
    int count;

    wantToken = 0;
    if (DEBUG(JOB))
 fprintf(debug_file, "Job_TokenWithdraw(%d): aborting %d, running %d\n",
  getpid(), aborting, jobTokensRunning);

    if (aborting || (jobTokensRunning >= maxJobs))
 return FALSE;

    count = read(tokenWaitJob.inPipe, &tok, 1);
    if (count == 0)
 Fatal("eof on job pipe!");
    if (count < 0 && jobTokensRunning != 0) {
 if (errno != EAGAIN) {
     Fatal("job pipe read: %s", strerror(errno));
 }
 if (DEBUG(JOB))
     fprintf(debug_file, "(%d) blocked for token\n", getpid());
 return FALSE;
    }

    if (count == 1 && tok != '+') {

 if (DEBUG(JOB))
     fprintf(debug_file, "(%d) aborted by token %c\n", getpid(), tok);
 while (read(tokenWaitJob.inPipe, &tok1, 1) == 1)
     continue;

 while (write(tokenWaitJob.outPipe, &tok, 1) == -1 && errno == EAGAIN)
     continue;
 Fatal("A failure has been detected in another branch of the parallel make");
    }

    if (count == 1 && jobTokensRunning == 0)

 while (write(tokenWaitJob.outPipe, &tok, 1) == -1 && errno == EAGAIN)
     continue;

    jobTokensRunning++;
    if (DEBUG(JOB))
 fprintf(debug_file, "(%d) withdrew token\n", getpid());
    return TRUE;
}
