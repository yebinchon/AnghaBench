
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slic_cmdqmem {int dummy; } ;
struct adapter {struct slic_cmdqmem cmdqmem; } ;


 int memset (struct slic_cmdqmem*,int ,int) ;

__attribute__((used)) static void slic_cmdqmem_init(struct adapter *adapter)
{
 struct slic_cmdqmem *cmdqmem = &adapter->cmdqmem;

 memset(cmdqmem, 0, sizeof(struct slic_cmdqmem));
}
