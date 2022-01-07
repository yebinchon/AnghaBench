
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ebitmap_node {unsigned int startbit; int maps; struct ebitmap_node* next; } ;
struct ebitmap {struct ebitmap_node* node; } ;


 unsigned int EBITMAP_SIZE ;
 unsigned int ebitmap_length (struct ebitmap*) ;
 unsigned int find_first_bit (int ,unsigned int) ;

__attribute__((used)) static inline unsigned int ebitmap_start_positive(struct ebitmap *e,
        struct ebitmap_node **n)
{
 unsigned int ofs;

 for (*n = e->node; *n; *n = (*n)->next) {
  ofs = find_first_bit((*n)->maps, EBITMAP_SIZE);
  if (ofs < EBITMAP_SIZE)
   return (*n)->startbit + ofs;
 }
 return ebitmap_length(e);
}
