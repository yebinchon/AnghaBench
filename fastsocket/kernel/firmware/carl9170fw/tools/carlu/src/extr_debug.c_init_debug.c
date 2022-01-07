
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INFO ;
 int VERBOSE ;
 void* _stddbg ;
 int _stderr ;
 void* _stdout ;
 int debug_level ;
 int print_message_debug_level ;
 int stderr ;
 void* stdout ;

void init_debug()
{
 debug_level = VERBOSE;
 debug_level = INFO;
 print_message_debug_level = 0;

 _stdout = stdout;
 _stddbg = stdout;
 _stderr = stderr;
}
