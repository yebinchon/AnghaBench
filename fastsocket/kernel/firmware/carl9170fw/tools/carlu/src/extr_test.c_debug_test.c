
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dbg (char*) ;
 int err (char*) ;
 int info (char*) ;
 int warn (char*) ;

void debug_test(void)
{
 err("This is an error.\n");
 warn("This is a warnig.\n");
 info("This is an informative message.\n");
 dbg("This is just utter useless babble.\n");
}
