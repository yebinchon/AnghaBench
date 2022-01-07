
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int s_vec ;


 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static const char *
ppc_abi_vector(uint64_t vec)
{
 static char s_vec[64];

 switch (vec) {
 case 0: return "N/A";
 case 1: return "Generic purpose registers";
 case 2: return "AltiVec registers";
 case 3: return "SPE registers";
 default:
  snprintf(s_vec, sizeof(s_vec), "Unknown(%ju)", (uintmax_t) vec);
  return (s_vec);
 }
}
