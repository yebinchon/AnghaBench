
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int random_get_pseudo_bytes (void*,size_t) ;

__attribute__((used)) static int
random_get_pseudo_bytes_cb(void *buf, size_t len, void *unused)
{
 return (random_get_pseudo_bytes(buf, len));
}
