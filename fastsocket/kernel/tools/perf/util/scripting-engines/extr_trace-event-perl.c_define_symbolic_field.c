
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENTER ;
 int FREETMPS ;
 int G_SCALAR ;
 int LEAVE ;
 int PUSHMARK (int ) ;
 int PUTBACK ;
 int SAVETMPS ;
 int SP ;
 int SPAGAIN ;
 int XPUSHs (int ) ;
 int call_pv (char*,int ) ;
 int dSP ;
 scalar_t__ get_cv (char*,int ) ;
 int newSVpv (char const*,int ) ;
 int sv_2mortal (int ) ;

__attribute__((used)) static void define_symbolic_field(const char *ev_name,
      const char *field_name)
{
 dSP;

 ENTER;
 SAVETMPS;
 PUSHMARK(SP);

 XPUSHs(sv_2mortal(newSVpv(ev_name, 0)));
 XPUSHs(sv_2mortal(newSVpv(field_name, 0)));

 PUTBACK;
 if (get_cv("main::define_symbolic_field", 0))
  call_pv("main::define_symbolic_field", G_SCALAR);
 SPAGAIN;
 PUTBACK;
 FREETMPS;
 LEAVE;
}
