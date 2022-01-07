
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct nlattr {int dummy; } ;
struct ip_set {int * variant; } ;
struct bitmap_port {scalar_t__ memsize; int timeout; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 size_t IPSET_ATTR_PORT ;
 size_t IPSET_ATTR_PORT_TO ;
 size_t IPSET_ATTR_TIMEOUT ;
 int IPSET_ERR_PROTOCOL ;
 scalar_t__ bitmap_bytes (int ,scalar_t__) ;
 int bitmap_port ;
 int bitmap_port_gc_init (struct ip_set*) ;
 int bitmap_tport ;
 int init_map_port (struct ip_set*,struct bitmap_port*,scalar_t__,scalar_t__) ;
 int ip_set_attr_netorder (struct nlattr**,size_t) ;
 scalar_t__ ip_set_get_h16 (struct nlattr*) ;
 int ip_set_optattr_netorder (struct nlattr**,size_t) ;
 int ip_set_timeout_uget (struct nlattr*) ;
 int kfree (struct bitmap_port*) ;
 struct bitmap_port* kzalloc (int,int ) ;
 int pr_debug (char*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
bitmap_port_create(struct ip_set *set, struct nlattr *tb[],
   u32 flags)
{
 struct bitmap_port *map;
 u16 first_port, last_port;

 if (unlikely(!ip_set_attr_netorder(tb, IPSET_ATTR_PORT) ||
       !ip_set_attr_netorder(tb, IPSET_ATTR_PORT_TO) ||
       !ip_set_optattr_netorder(tb, IPSET_ATTR_TIMEOUT)))
  return -IPSET_ERR_PROTOCOL;

 first_port = ip_set_get_h16(tb[IPSET_ATTR_PORT]);
 last_port = ip_set_get_h16(tb[IPSET_ATTR_PORT_TO]);
 if (first_port > last_port) {
  u16 tmp = first_port;

  first_port = last_port;
  last_port = tmp;
 }

 map = kzalloc(sizeof(*map), GFP_KERNEL);
 if (!map)
  return -ENOMEM;

 if (tb[IPSET_ATTR_TIMEOUT]) {
  map->memsize = (last_port - first_port + 1)
          * sizeof(unsigned long);

  if (!init_map_port(set, map, first_port, last_port)) {
   kfree(map);
   return -ENOMEM;
  }

  map->timeout = ip_set_timeout_uget(tb[IPSET_ATTR_TIMEOUT]);
  set->variant = &bitmap_tport;

  bitmap_port_gc_init(set);
 } else {
  map->memsize = bitmap_bytes(0, last_port - first_port);
  pr_debug("memsize: %zu\n", map->memsize);
  if (!init_map_port(set, map, first_port, last_port)) {
   kfree(map);
   return -ENOMEM;
  }

  set->variant = &bitmap_port;
 }
 return 0;
}
