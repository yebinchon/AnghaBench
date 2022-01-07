
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdb_client_data ;


 int RETURN_MASK_ALL ;
 int SIGHUP ;
 int SIG_DFL ;
 int catch_errors (int ,int *,char*,int ) ;
 int getpid () ;
 int kill (int ,int ) ;
 int quit_cover ;
 int signal (int ,int ) ;

__attribute__((used)) static void
async_disconnect (gdb_client_data arg)
{
  catch_errors (quit_cover, ((void*)0),
  "Could not kill the program being debugged",
  RETURN_MASK_ALL);
  signal (SIGHUP, SIG_DFL);
  kill (getpid (), SIGHUP);
}
