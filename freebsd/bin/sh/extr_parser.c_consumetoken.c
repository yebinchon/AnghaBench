
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int readtoken () ;
 int synexpect (int) ;

__attribute__((used)) static void
consumetoken(int token)
{
 if (readtoken() != token)
  synexpect(token);
}
