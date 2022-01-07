
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONN_HASH_SIZE ;

__attribute__((used)) static inline int nodeid_hash(int nodeid)
{
 return nodeid & (CONN_HASH_SIZE-1);
}
