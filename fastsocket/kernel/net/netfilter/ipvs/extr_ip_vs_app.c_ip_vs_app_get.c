
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_app {int module; } ;


 int try_module_get (int ) ;

__attribute__((used)) static inline int ip_vs_app_get(struct ip_vs_app *app)
{
 return try_module_get(app->module);
}
