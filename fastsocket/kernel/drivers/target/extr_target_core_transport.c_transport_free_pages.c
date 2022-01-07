
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int se_cmd_flags; scalar_t__ t_bidi_data_nents; int * t_bidi_data_sg; scalar_t__ t_data_nents; int * t_data_sg; } ;


 int SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC ;
 int transport_free_sgl (int *,scalar_t__) ;

__attribute__((used)) static inline void transport_free_pages(struct se_cmd *cmd)
{
 if (cmd->se_cmd_flags & SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC)
  return;

 transport_free_sgl(cmd->t_data_sg, cmd->t_data_nents);
 cmd->t_data_sg = ((void*)0);
 cmd->t_data_nents = 0;

 transport_free_sgl(cmd->t_bidi_data_sg, cmd->t_bidi_data_nents);
 cmd->t_bidi_data_sg = ((void*)0);
 cmd->t_bidi_data_nents = 0;
}
