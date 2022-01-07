
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;


 int ptid_build (int,int ,int ) ;

ptid_t
pid_to_ptid (int pid)
{
  return ptid_build (pid, 0, 0);
}
