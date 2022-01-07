
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int root_var_p ;


 int tpa_delete (int ) ;

__attribute__((used)) static inline void
root_var_delete (root_var_p rv)
{
  tpa_delete (rv);
}
