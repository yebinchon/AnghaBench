
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int longjmp (int ,int) ;
 int resetbuf ;

__attribute__((used)) static void
reset(void)
{
 longjmp(resetbuf, 1);
}
