
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sadb_msg {int dummy; } ;



__attribute__((used)) static inline void pfkey_hdr_dup(struct sadb_msg *new, struct sadb_msg *orig)
{
 *new = *orig;
}
