
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * buf; scalar_t__ strpush; } ;


 scalar_t__ EOF_NLEFT ;
 TYPE_1__* parsefile ;
 scalar_t__ parsenleft ;

int
preadateof(void)
{
 if (parsenleft > 0)
  return 0;
 if (parsefile->strpush)
  return 0;
 if (parsenleft == EOF_NLEFT || parsefile->buf == ((void*)0))
  return 1;
 return 0;
}
