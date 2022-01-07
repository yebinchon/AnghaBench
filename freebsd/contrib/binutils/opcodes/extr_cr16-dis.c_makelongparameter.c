
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nbits; scalar_t__ val; } ;
typedef TYPE_1__ parameter ;
typedef scalar_t__ dwordU ;
typedef int ULONGLONG ;


 scalar_t__ EXTRACT (int ,int,int) ;

__attribute__((used)) static parameter
makelongparameter (ULONGLONG val, int start, int end)
{
  parameter p;

  p.val = (dwordU) EXTRACT (val, 48 - end, end - start);
  p.nbits = end - start;
  return p;
}
