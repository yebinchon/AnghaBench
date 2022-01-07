
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfs_cmd {int size; void* cpad; void* csize; void* ext; void* cmd; void* iv; void* start; void* id; } ;


 void* __be16_to_cpu (void*) ;
 int __be32_to_cpu (int ) ;
 void* __be64_to_cpu (void*) ;

__attribute__((used)) static inline void netfs_convert_cmd(struct netfs_cmd *cmd)
{
 cmd->id = __be64_to_cpu(cmd->id);
 cmd->start = __be64_to_cpu(cmd->start);
 cmd->iv = __be64_to_cpu(cmd->iv);
 cmd->cmd = __be16_to_cpu(cmd->cmd);
 cmd->ext = __be16_to_cpu(cmd->ext);
 cmd->csize = __be16_to_cpu(cmd->csize);
 cmd->cpad = __be16_to_cpu(cmd->cpad);
 cmd->size = __be32_to_cpu(cmd->size);
}
