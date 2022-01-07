
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlbl_audit {int secid; int sessionid; int loginuid; } ;


 int audit_get_loginuid (int ) ;
 int audit_get_sessionid (int ) ;
 int current ;
 int current_security () ;
 int smack_to_secid (int ) ;

__attribute__((used)) static void smk_netlabel_audit_set(struct netlbl_audit *nap)
{
 nap->loginuid = audit_get_loginuid(current);
 nap->sessionid = audit_get_sessionid(current);
 nap->secid = smack_to_secid(current_security());
}
