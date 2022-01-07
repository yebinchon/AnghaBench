
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;



__attribute__((used)) static int generic_print_tuple(struct seq_file *s,
       const struct nf_conntrack_tuple *tuple)
{
 return 0;
}
