
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void sym_hist ;
struct annotation {TYPE_1__* src; } ;
struct TYPE_2__ {int sizeof_sym_hist; int histograms; } ;



__attribute__((used)) static inline struct sym_hist *annotation__histogram(struct annotation *notes, int idx)
{
 return (((void *)&notes->src->histograms) +
   (notes->src->sizeof_sym_hist * idx));
}
