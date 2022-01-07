
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uhci_td {int status; } ;
typedef int __le32 ;


 int barrier () ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline u32 td_status(struct uhci_td *td) {
 __le32 status = td->status;

 barrier();
 return le32_to_cpu(status);
}
