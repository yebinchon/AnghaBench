
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ RPC_AUTH_GSS ;
 scalar_t__ RPC_AUTH_MAXFLAVOR ;

__attribute__((used)) static u32
pseudoflavor_to_flavor(u32 flavor) {
 if (flavor >= RPC_AUTH_MAXFLAVOR)
  return RPC_AUTH_GSS;
 return flavor;
}
