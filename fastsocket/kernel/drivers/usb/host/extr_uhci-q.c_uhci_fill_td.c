
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uhci_td {void* buffer; void* token; void* status; } ;


 void* cpu_to_le32 (int ) ;

__attribute__((used)) static inline void uhci_fill_td(struct uhci_td *td, u32 status,
  u32 token, u32 buffer)
{
 td->status = cpu_to_le32(status);
 td->token = cpu_to_le32(token);
 td->buffer = cpu_to_le32(buffer);
}
