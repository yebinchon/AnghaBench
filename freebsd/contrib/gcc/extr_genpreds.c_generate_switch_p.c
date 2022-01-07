
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 scalar_t__ MATCH_CODE ;
 int XSTR (int ,int ) ;
 scalar_t__ strchr (int ,char) ;

__attribute__((used)) static bool
generate_switch_p (rtx exp)
{
  return GET_CODE (exp) == MATCH_CODE
  && strchr (XSTR (exp, 0), ',');
}
