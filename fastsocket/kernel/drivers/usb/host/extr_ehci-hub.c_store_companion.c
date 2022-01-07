
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehci_hcd {int companion_ports; int hcs_params; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t ENOENT ;
 int HCS_N_PORTS (int ) ;
 int PORT_OWNER ;
 int bus_to_hcd (int ) ;
 int clear_bit (int,int *) ;
 int dev_get_drvdata (struct device*) ;
 struct ehci_hcd* hcd_to_ehci (int ) ;
 int set_bit (int,int *) ;
 int set_owner (struct ehci_hcd*,int,int) ;
 int sscanf (char const*,char*,int*) ;

__attribute__((used)) static ssize_t store_companion(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct ehci_hcd *ehci;
 int portnum, new_owner;

 ehci = hcd_to_ehci(bus_to_hcd(dev_get_drvdata(dev)));
 new_owner = PORT_OWNER;
 if (sscanf(buf, "%d", &portnum) != 1)
  return -EINVAL;
 if (portnum < 0) {
  portnum = - portnum;
  new_owner = 0;
 }
 if (portnum <= 0 || portnum > HCS_N_PORTS(ehci->hcs_params))
  return -ENOENT;
 portnum--;
 if (new_owner)
  set_bit(portnum, &ehci->companion_ports);
 else
  clear_bit(portnum, &ehci->companion_ports);
 set_owner(ehci, portnum, new_owner);
 return count;
}
