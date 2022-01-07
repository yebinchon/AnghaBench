
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {uintptr_t low; } ;


 scalar_t__ LIKELY (int) ;
 int MINPTR ;
 int REG_RESERVED (TYPE_1__*) ;
 int __MF_TYPE_NOACCESS ;
 int __mf_describe_object (int *) ;
 TYPE_1__* __mf_lc_mask ;
 TYPE_1__* __mf_lc_shift ;
 TYPE_1__* __mf_lookup_cache ;
 int __mf_register (int ,int,int ,char*) ;
 int __mf_resolve_dynamics () ;
 int __mf_set_default_options () ;
 int __mf_set_state (int ) ;
 scalar_t__ __mf_starting_p ;
 int __mf_usage () ;
 int __mfu_set_options (char*) ;
 int active ;
 int exit (int) ;
 char* getenv (char*) ;

void
__mf_init ()
{
  char *ov = 0;


  if (LIKELY (__mf_starting_p == 0))
    return;





  __mf_starting_p = 0;

  __mf_set_state (active);

  __mf_set_default_options ();

  ov = getenv ("MUDFLAP_OPTIONS");
  if (ov)
    {
      int rc = __mfu_set_options (ov);
      if (rc < 0)
        {
          __mf_usage ();
          exit (1);
        }
    }


  __mf_describe_object (((void*)0));




  __mf_register (& __mf_lookup_cache, sizeof(__mf_lookup_cache), __MF_TYPE_NOACCESS, "__mf_lookup_cache");
  __mf_register (& __mf_lc_mask, sizeof(__mf_lc_mask), __MF_TYPE_NOACCESS, "__mf_lc_mask");
  __mf_register (& __mf_lc_shift, sizeof(__mf_lc_shift), __MF_TYPE_NOACCESS, "__mf_lc_shift");



  __mf_register (MINPTR, 1, __MF_TYPE_NOACCESS, "NULL");
  __mf_lookup_cache[0].low = (uintptr_t) -1;
}
