
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int EXERROR ;
 int FORCEINTON ;
 int TRACE (char*) ;
 int exitstatus ;
 int exraise (int ) ;
 int flushall () ;
 int getpid () ;
 int vwarning (char const*,int ) ;

__attribute__((used)) static void
verrorwithstatus(int status, const char *msg, va_list ap)
{
 FORCEINTON;
 if (msg)
  vwarning(msg, ap);
 flushall();
 exitstatus = status;
 exraise(EXERROR);
}
