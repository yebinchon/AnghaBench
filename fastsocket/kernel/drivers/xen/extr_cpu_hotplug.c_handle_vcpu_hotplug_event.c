
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_watch {int dummy; } ;


 size_t XS_WATCH_PATH ;
 int sscanf (char*,char*,unsigned int*) ;
 char* strstr (char const*,char*) ;
 int vcpu_hotplug (unsigned int) ;

__attribute__((used)) static void handle_vcpu_hotplug_event(struct xenbus_watch *watch,
     const char **vec, unsigned int len)
{
 unsigned int cpu;
 char *cpustr;
 const char *node = vec[XS_WATCH_PATH];

 cpustr = strstr(node, "cpu/");
 if (cpustr != ((void*)0)) {
  sscanf(cpustr, "cpu/%u", &cpu);
  vcpu_hotplug(cpu);
 }
}
