
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int core_close (int ) ;

__attribute__((used)) static void
core_close_cleanup (void *ignore)
{
  core_close (0 );
}
