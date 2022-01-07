
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sub_seq {int dummy; } ;


 int GFP_ATOMIC ;
 struct sub_seq* kcalloc (int ,int,int ) ;

__attribute__((used)) static struct sub_seq *tipc_subseq_alloc(u32 cnt)
{
 struct sub_seq *sseq = kcalloc(cnt, sizeof(struct sub_seq), GFP_ATOMIC);
 return sseq;
}
