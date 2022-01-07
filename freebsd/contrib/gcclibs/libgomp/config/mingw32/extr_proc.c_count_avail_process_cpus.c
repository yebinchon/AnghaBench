
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD_PTR ;


 int GetCurrentProcess () ;
 scalar_t__ GetProcessAffinityMask (int ,int*,int*) ;

__attribute__((used)) static int
count_avail_process_cpus ()
{
  DWORD_PTR process_cpus;
  DWORD_PTR system_cpus;

  if (GetProcessAffinityMask (GetCurrentProcess (),
         &process_cpus, &system_cpus))
    {
      unsigned int count;
      for (count = 0; process_cpus != 0; process_cpus >>= 1)
 if (process_cpus & 1)
   count++;
      return count;
    }
  return 1;
}
