
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int dbg_print (int ,char const*,int,char*) ;

__attribute__((used)) static void dbg_event(u8 addr, const char *name, int status)
{
 if (name != ((void*)0))
  dbg_print(addr, name, status, "");
}
