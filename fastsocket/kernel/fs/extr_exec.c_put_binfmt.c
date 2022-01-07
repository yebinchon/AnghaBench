
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_binfmt {int module; } ;


 int module_put (int ) ;

__attribute__((used)) static inline void put_binfmt(struct linux_binfmt * fmt)
{
 module_put(fmt->module);
}
