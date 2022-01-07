
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int preferred_amq_port; } ;


 int atoi (char const*) ;
 TYPE_1__ gopt ;

__attribute__((used)) static int
gopt_preferred_amq_port(const char *val)
{
  gopt.preferred_amq_port = atoi(val);





  return 0;
}
