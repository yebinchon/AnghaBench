
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dx_entry {int dummy; } ;
struct dx_countlimit {int count; } ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static inline unsigned dx_get_count (struct dx_entry *entries)
{
 return le16_to_cpu(((struct dx_countlimit *) entries)->count);
}
