
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmsg_bytes ;

void pstore_set_kmsg_bytes(int bytes)
{
 kmsg_bytes = bytes;
}
