
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPC_64 ;

__attribute__((used)) static inline int compat_ipc_parse_version(int *cmd)
{
 int version = *cmd & IPC_64;





 *cmd |= IPC_64;



 return version;
}
