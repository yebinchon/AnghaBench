
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysinfo {int freeram; int bufferram; } ;


 int __ip_vs_dropentry_lock ;
 int __ip_vs_droppacket_lock ;
 int __ip_vs_securetcp_lock ;
 int atomic_set (int *,int) ;
 int ip_vs_drop_counter ;
 int ip_vs_drop_rate ;
 int ip_vs_dropentry ;
 int ip_vs_protocol_timeout_change (int) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int si_meminfo (struct sysinfo*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sysctl_ip_vs_am_droprate ;
 int sysctl_ip_vs_amemthresh ;
 int sysctl_ip_vs_drop_entry ;
 int sysctl_ip_vs_drop_packet ;
 int sysctl_ip_vs_secure_tcp ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static void update_defense_level(void)
{
 struct sysinfo i;
 static int old_secure_tcp = 0;
 int availmem;
 int nomem;
 int to_change = -1;


 si_meminfo(&i);
 availmem = i.freeram + i.bufferram;





 nomem = (availmem < sysctl_ip_vs_amemthresh);

 local_bh_disable();


 spin_lock(&__ip_vs_dropentry_lock);
 switch (sysctl_ip_vs_drop_entry) {
 case 0:
  atomic_set(&ip_vs_dropentry, 0);
  break;
 case 1:
  if (nomem) {
   atomic_set(&ip_vs_dropentry, 1);
   sysctl_ip_vs_drop_entry = 2;
  } else {
   atomic_set(&ip_vs_dropentry, 0);
  }
  break;
 case 2:
  if (nomem) {
   atomic_set(&ip_vs_dropentry, 1);
  } else {
   atomic_set(&ip_vs_dropentry, 0);
   sysctl_ip_vs_drop_entry = 1;
  };
  break;
 case 3:
  atomic_set(&ip_vs_dropentry, 1);
  break;
 }
 spin_unlock(&__ip_vs_dropentry_lock);


 spin_lock(&__ip_vs_droppacket_lock);
 switch (sysctl_ip_vs_drop_packet) {
 case 0:
  ip_vs_drop_rate = 0;
  break;
 case 1:
  if (nomem) {
   ip_vs_drop_rate = ip_vs_drop_counter
    = sysctl_ip_vs_amemthresh /
    (sysctl_ip_vs_amemthresh-availmem);
   sysctl_ip_vs_drop_packet = 2;
  } else {
   ip_vs_drop_rate = 0;
  }
  break;
 case 2:
  if (nomem) {
   ip_vs_drop_rate = ip_vs_drop_counter
    = sysctl_ip_vs_amemthresh /
    (sysctl_ip_vs_amemthresh-availmem);
  } else {
   ip_vs_drop_rate = 0;
   sysctl_ip_vs_drop_packet = 1;
  }
  break;
 case 3:
  ip_vs_drop_rate = sysctl_ip_vs_am_droprate;
  break;
 }
 spin_unlock(&__ip_vs_droppacket_lock);


 write_lock(&__ip_vs_securetcp_lock);
 switch (sysctl_ip_vs_secure_tcp) {
 case 0:
  if (old_secure_tcp >= 2)
   to_change = 0;
  break;
 case 1:
  if (nomem) {
   if (old_secure_tcp < 2)
    to_change = 1;
   sysctl_ip_vs_secure_tcp = 2;
  } else {
   if (old_secure_tcp >= 2)
    to_change = 0;
  }
  break;
 case 2:
  if (nomem) {
   if (old_secure_tcp < 2)
    to_change = 1;
  } else {
   if (old_secure_tcp >= 2)
    to_change = 0;
   sysctl_ip_vs_secure_tcp = 1;
  }
  break;
 case 3:
  if (old_secure_tcp < 2)
   to_change = 1;
  break;
 }
 old_secure_tcp = sysctl_ip_vs_secure_tcp;
 if (to_change >= 0)
  ip_vs_protocol_timeout_change(sysctl_ip_vs_secure_tcp>1);
 write_unlock(&__ip_vs_securetcp_lock);

 local_bh_enable();
}
