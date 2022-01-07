
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2nm_cluster {unsigned int cl_keepalive_delay_ms; unsigned int cl_idle_timeout_ms; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ML_NOTICE ;
 int mlog (int ,char*,...) ;
 scalar_t__ o2net_num_connected_peers () ;
 int o2nm_cluster_attr_write (char const*,size_t,unsigned int*) ;

__attribute__((used)) static ssize_t o2nm_cluster_attr_keepalive_delay_ms_write(
 struct o2nm_cluster *cluster, const char *page, size_t count)
{
 ssize_t ret;
 unsigned int val;

 ret = o2nm_cluster_attr_write(page, count, &val);

 if (ret > 0) {
  if (cluster->cl_keepalive_delay_ms != val
      && o2net_num_connected_peers()) {
   mlog(ML_NOTICE,
        "o2net: cannot change keepalive delay after"
        " the first peer has agreed to it."
        "  %d connected peers\n",
        o2net_num_connected_peers());
   ret = -EINVAL;
  } else if (val >= cluster->cl_idle_timeout_ms) {
   mlog(ML_NOTICE, "o2net: keepalive delay must be "
        "smaller than idle timeout\n");
   ret = -EINVAL;
  } else {
   cluster->cl_keepalive_delay_ms = val;
  }
 }

 return ret;
}
