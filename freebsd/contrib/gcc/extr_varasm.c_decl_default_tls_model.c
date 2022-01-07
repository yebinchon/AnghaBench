
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
typedef enum tls_model { ____Placeholder_tls_model } tls_model ;
struct TYPE_2__ {int (* binds_local_p ) (int ) ;} ;


 int TLS_MODEL_GLOBAL_DYNAMIC ;
 int TLS_MODEL_INITIAL_EXEC ;
 int TLS_MODEL_LOCAL_DYNAMIC ;
 int TLS_MODEL_LOCAL_EXEC ;
 int flag_shlib ;
 int flag_tls_default ;
 scalar_t__ optimize ;
 int stub1 (int ) ;
 TYPE_1__ targetm ;

enum tls_model
decl_default_tls_model (tree decl)
{
  enum tls_model kind;
  bool is_local;

  is_local = targetm.binds_local_p (decl);
  if (!flag_shlib)
    {
      if (is_local)
 kind = TLS_MODEL_LOCAL_EXEC;
      else
 kind = TLS_MODEL_INITIAL_EXEC;
    }



  else if (optimize && is_local)
    kind = TLS_MODEL_LOCAL_DYNAMIC;
  else
    kind = TLS_MODEL_GLOBAL_DYNAMIC;
  if (kind < flag_tls_default)
    kind = flag_tls_default;

  return kind;
}
