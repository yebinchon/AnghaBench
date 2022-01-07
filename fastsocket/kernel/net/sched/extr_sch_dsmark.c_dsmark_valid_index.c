
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct dsmark_qdisc_data {scalar_t__ indices; } ;



__attribute__((used)) static inline int dsmark_valid_index(struct dsmark_qdisc_data *p, u16 index)
{
 return (index <= p->indices && index > 0);
}
