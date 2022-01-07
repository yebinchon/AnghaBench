
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;


 int SUB48 (int const,int const) ;
 int TO_SIGNED48 (int ) ;

__attribute__((used)) static inline s64 dccp_delta_seqno(const u64 seqno1, const u64 seqno2)
{
 u64 delta = SUB48(seqno2, seqno1);

 return TO_SIGNED48(delta);
}
