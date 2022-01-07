
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MADV_PROTECT ;
 int MCL_CURRENT ;
 int MCL_FUTURE ;
 int PROCLOCK ;
 int XLOG_INFO ;
 int XLOG_WARNING ;
 int madvise (int *,int ,int ) ;
 scalar_t__ mlockall (int) ;
 scalar_t__ plock (int ) ;
 int plog (int ,char*) ;

__attribute__((used)) static void
do_memory_locking(void)
{



  plog(XLOG_WARNING, "Process memory locking not supported by the OS");
}
