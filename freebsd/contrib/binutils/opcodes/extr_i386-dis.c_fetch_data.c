
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disassemble_info {int (* read_memory_func ) (int,int *,int,struct disassemble_info*) ;int (* memory_error_func ) (int,int,struct disassemble_info*) ;scalar_t__ private_data; } ;
struct dis_private {int insn_start; int * max_fetched; int bailout; int * the_buffer; } ;
typedef int bfd_vma ;
typedef int bfd_byte ;


 int MAX_MNEM_SIZE ;
 int longjmp (int ,int) ;
 int stub1 (int,int *,int,struct disassemble_info*) ;
 int stub2 (int,int,struct disassemble_info*) ;

__attribute__((used)) static int
fetch_data (struct disassemble_info *info, bfd_byte *addr)
{
  int status;
  struct dis_private *priv = (struct dis_private *) info->private_data;
  bfd_vma start = priv->insn_start + (priv->max_fetched - priv->the_buffer);

  if (addr <= priv->the_buffer + MAX_MNEM_SIZE)
    status = (*info->read_memory_func) (start,
     priv->max_fetched,
     addr - priv->max_fetched,
     info);
  else
    status = -1;
  if (status != 0)
    {




      if (priv->max_fetched == priv->the_buffer)
 (*info->memory_error_func) (status, start, info);
      longjmp (priv->bailout, 1);
    }
  else
    priv->max_fetched = addr;
  return 1;
}
