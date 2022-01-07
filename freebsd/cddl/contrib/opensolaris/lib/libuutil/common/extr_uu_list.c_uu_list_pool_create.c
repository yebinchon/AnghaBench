
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {void* ul_prev_enc; void* ul_next_enc; } ;
struct TYPE_6__ {size_t ulp_nodeoffset; size_t ulp_objsize; int ulp_debug; struct TYPE_6__* ulp_next; struct TYPE_6__* ulp_prev; TYPE_5__ ulp_null_list; int ulp_lock; scalar_t__ ulp_last_index; int * ulp_cmp; int ulp_name; } ;
typedef TYPE_1__ uu_list_pool_t ;
typedef int uu_list_node_t ;
typedef int uu_compare_fn_t ;
typedef int uint32_t ;


 int UU_ERROR_INVALID_ARGUMENT ;
 int UU_ERROR_NO_MEMORY ;
 int UU_ERROR_UNKNOWN_FLAG ;
 int UU_LIST_POOL_DEBUG ;
 int UU_NAME_DOMAIN ;
 void* UU_PTR_ENCODE (TYPE_5__*) ;
 int pthread_mutex_init (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int strlcpy (int ,char const*,int) ;
 int uu_check_name (char const*,int ) ;
 int uu_lpool_list_lock ;
 TYPE_1__ uu_null_lpool ;
 int uu_set_error (int ) ;
 TYPE_1__* uu_zalloc (int) ;

uu_list_pool_t *
uu_list_pool_create(const char *name, size_t objsize,
    size_t nodeoffset, uu_compare_fn_t *compare_func, uint32_t flags)
{
 uu_list_pool_t *pp, *next, *prev;

 if (name == ((void*)0) ||
     uu_check_name(name, UU_NAME_DOMAIN) == -1 ||
     nodeoffset + sizeof (uu_list_node_t) > objsize) {
  uu_set_error(UU_ERROR_INVALID_ARGUMENT);
  return (((void*)0));
 }

 if (flags & ~UU_LIST_POOL_DEBUG) {
  uu_set_error(UU_ERROR_UNKNOWN_FLAG);
  return (((void*)0));
 }

 pp = uu_zalloc(sizeof (uu_list_pool_t));
 if (pp == ((void*)0)) {
  uu_set_error(UU_ERROR_NO_MEMORY);
  return (((void*)0));
 }

 (void) strlcpy(pp->ulp_name, name, sizeof (pp->ulp_name));
 pp->ulp_nodeoffset = nodeoffset;
 pp->ulp_objsize = objsize;
 pp->ulp_cmp = compare_func;
 if (flags & UU_LIST_POOL_DEBUG)
  pp->ulp_debug = 1;
 pp->ulp_last_index = 0;

 (void) pthread_mutex_init(&pp->ulp_lock, ((void*)0));

 pp->ulp_null_list.ul_next_enc = UU_PTR_ENCODE(&pp->ulp_null_list);
 pp->ulp_null_list.ul_prev_enc = UU_PTR_ENCODE(&pp->ulp_null_list);

 (void) pthread_mutex_lock(&uu_lpool_list_lock);
 pp->ulp_next = next = &uu_null_lpool;
 pp->ulp_prev = prev = next->ulp_prev;
 next->ulp_prev = pp;
 prev->ulp_next = pp;
 (void) pthread_mutex_unlock(&uu_lpool_list_lock);

 return (pp);
}
