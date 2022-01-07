
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;
 int exit (int ) ;
 int exitstat ;
 scalar_t__ incomment ;

__attribute__((used)) static void
done(void)
{
 if (incomment)
  error("EOF in comment");
 exit(exitstat);
}
