
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RETSIGTYPE ;


 int stoplight ;

__attribute__((used)) static RETSIGTYPE
proceed(int signum)
{
  stoplight = signum;
}
