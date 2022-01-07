
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int key_serial_t ;


 int ENOKEY ;
 long keyctl_reject_key (int ,unsigned int,int ,int ) ;

long keyctl_negate_key(key_serial_t id, unsigned timeout, key_serial_t ringid)
{
 return keyctl_reject_key(id, timeout, ENOKEY, ringid);
}
