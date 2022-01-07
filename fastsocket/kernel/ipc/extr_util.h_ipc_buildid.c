
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEQ_MULTIPLIER ;

__attribute__((used)) static inline int ipc_buildid(int id, int seq)
{
 return SEQ_MULTIPLIER * seq + id;
}
