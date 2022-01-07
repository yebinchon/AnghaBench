
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_data_node {int padding; } ;


 int memset (int ,int ,int) ;

__attribute__((used)) static inline void zero_data_node_unused(struct ubifs_data_node *data)
{
 memset(data->padding, 0, 2);
}
