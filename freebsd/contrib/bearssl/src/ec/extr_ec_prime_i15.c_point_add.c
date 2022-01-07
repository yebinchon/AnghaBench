
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int jacobian ;
typedef int curve_params ;


 int code_add ;
 int run_code (int *,int const*,int const*,int ) ;

__attribute__((used)) static inline uint32_t
point_add(jacobian *P1, const jacobian *P2, const curve_params *cc)
{
 return run_code(P1, P2, cc, code_add);
}
