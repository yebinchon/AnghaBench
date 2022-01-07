
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int terminate (char*,int) ;

__attribute__((used)) static void
handle_sig(int sig)
{
 terminate("Caught signal %d - exiting\n", sig);
}
