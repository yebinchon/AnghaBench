
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_var_p ;


 int tpa_delete (int ) ;

__attribute__((used)) static inline void
type_var_delete (type_var_p tv)
{
  tpa_delete (tv);
}
