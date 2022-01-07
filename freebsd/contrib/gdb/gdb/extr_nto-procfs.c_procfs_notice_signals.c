
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ptid_t ;
struct TYPE_2__ {int trace; } ;


 int notice_signals () ;
 TYPE_1__ run ;
 int sigemptyset (int *) ;

__attribute__((used)) static void
procfs_notice_signals (ptid_t ptid)
{
  sigemptyset (&run.trace);
  notice_signals ();
}
