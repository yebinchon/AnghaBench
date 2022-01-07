
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ADD48 (int ,int) ;

__attribute__((used)) static inline void dccp_inc_seqno(u64 *seqno)
{
 *seqno = ADD48(*seqno, 1);
}
