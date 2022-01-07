
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tid_t ;
typedef int alist_t ;


 int alist_add (int *,void*,void*) ;
 int alist_find (int *,void*,int *) ;
 int assert (int) ;
 int debug (int,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
add_mapping(alist_t *ta, tid_t srcid, tid_t tgtid)
{
 debug(3, "Adding mapping %u <%x> => %u <%x>\n", srcid, srcid, tgtid, tgtid);

 assert(!alist_find(ta, (void *)(uintptr_t)srcid, ((void*)0)));
 assert(srcid != 0 && tgtid != 0);

 alist_add(ta, (void *)(uintptr_t)srcid, (void *)(uintptr_t)tgtid);
}
