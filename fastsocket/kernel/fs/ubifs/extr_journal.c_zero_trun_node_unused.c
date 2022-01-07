
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_trun_node {int padding; } ;


 int memset (int ,int ,int) ;

__attribute__((used)) static inline void zero_trun_node_unused(struct ubifs_trun_node *trun)
{
 memset(trun->padding, 0, 12);
}
