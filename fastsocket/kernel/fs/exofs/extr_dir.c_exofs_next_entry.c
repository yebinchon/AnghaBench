
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exofs_dir_entry {int rec_len; } ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static inline
struct exofs_dir_entry *exofs_next_entry(struct exofs_dir_entry *p)
{
 return (struct exofs_dir_entry *)((char *)p + le16_to_cpu(p->rec_len));
}
