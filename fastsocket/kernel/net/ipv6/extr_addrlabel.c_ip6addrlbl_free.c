
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6addrlbl_entry {int lbl_net; } ;


 int kfree (struct ip6addrlbl_entry*) ;
 int release_net (int ) ;

__attribute__((used)) static inline void ip6addrlbl_free(struct ip6addrlbl_entry *p)
{



 kfree(p);
}
