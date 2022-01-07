
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jacobian ;
typedef int curve_params ;


 int code_double ;
 int run_code (int *,int *,int const*,int ) ;

__attribute__((used)) static inline void
point_double(jacobian *P, const curve_params *cc)
{
 run_code(P, P, cc, code_double);
}
