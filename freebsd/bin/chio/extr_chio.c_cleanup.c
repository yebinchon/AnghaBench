
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int changer_fd ;
 int close (int ) ;

__attribute__((used)) static void
cleanup(void)
{

 (void)close(changer_fd);
}
