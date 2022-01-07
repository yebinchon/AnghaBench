
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_read_cmd {size_t size; size_t capacity; struct read_cmd_item* r_container; } ;
struct read_cmd_item {int cmd; void* data; } ;
typedef enum read_cmd { ____Placeholder_read_cmd } read_cmd ;


 size_t BUFFER_GROWFACTOR ;
 int free (struct read_cmd_item*) ;
 struct read_cmd_item* malloc (int) ;

__attribute__((used)) static int
vector_read_cmd_push(struct vector_read_cmd *v, enum read_cmd cmd, void *data)
{
 struct read_cmd_item *tmp_r_ctn;
 size_t tmp_cap;
 size_t i;

 if (v == ((void*)0))
  return (0);

 if (v->size == v->capacity) {
  tmp_cap = v->capacity * BUFFER_GROWFACTOR;
  if ((tmp_r_ctn = malloc(sizeof(*tmp_r_ctn) * tmp_cap)) == ((void*)0))
   return (0);
  for (i = 0; i < v->size; ++i)
   tmp_r_ctn[i] = v->r_container[i];
  free(v->r_container);
  v->r_container = tmp_r_ctn;
  v->capacity = tmp_cap;
 }

 v->r_container[v->size].cmd = cmd;
 v->r_container[v->size].data = data;
 ++v->size;

 return (1);
}
