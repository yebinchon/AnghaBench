
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ND_LOCAL_NODE ;
 scalar_t__ ND_NODE_CMP (int ,int) ;
 int error (char*) ;
 unsigned int netmgr_strtond (int ,int ) ;
 int nto_procfs_node ;
 int nto_procfs_path ;

__attribute__((used)) static unsigned
nto_node(void)
{
  unsigned node;

  if (ND_NODE_CMP(nto_procfs_node, ND_LOCAL_NODE) == 0)
    return ND_LOCAL_NODE;

  node = netmgr_strtond(nto_procfs_path,0);
  if (node == -1)
      error ("Lost the QNX node.  Debug session probably over.");

  return (node);
}
