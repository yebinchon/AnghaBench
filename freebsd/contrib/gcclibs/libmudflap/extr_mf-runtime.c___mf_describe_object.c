
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int tv_sec; int tv_usec; } ;
struct TYPE_6__ {int tv_usec; int tv_sec; } ;
struct TYPE_8__ {unsigned int description_epoch; char* name; scalar_t__ type; unsigned int alloc_backtrace_size; char** alloc_backtrace; unsigned int dealloc_backtrace_size; char** dealloc_backtrace; TYPE_2__ dealloc_time; scalar_t__ dealloc_thread; scalar_t__ dealloc_pc; scalar_t__ deallocated_p; scalar_t__ low; scalar_t__ high; scalar_t__ alloc_thread; scalar_t__ alloc_pc; TYPE_1__ alloc_time; scalar_t__ watching_p; int liveness; int write_count; int read_count; } ;
typedef TYPE_3__ __mf_object_t ;
struct TYPE_9__ {scalar_t__ backtrace; scalar_t__ persistent_count; scalar_t__ abbreviate; } ;


 scalar_t__ __MF_TYPE_GUESS ;
 scalar_t__ __MF_TYPE_HEAP ;
 scalar_t__ __MF_TYPE_HEAP_I ;
 scalar_t__ __MF_TYPE_NOACCESS ;
 scalar_t__ __MF_TYPE_STACK ;
 scalar_t__ __MF_TYPE_STATIC ;
 TYPE_4__ __mf_opts ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void
__mf_describe_object (__mf_object_t *obj)
{
  static unsigned epoch = 0;
  if (obj == ((void*)0))
    {
      epoch ++;
      return;
    }

  if (__mf_opts.abbreviate && obj->description_epoch == epoch)
    {
      fprintf (stderr,
               "mudflap %sobject %p: name=`%s'\n",
               (obj->deallocated_p ? "dead " : ""),
               (void *) obj, (obj->name ? obj->name : ""));
      return;
    }
  else
    obj->description_epoch = epoch;

  fprintf (stderr,
           "mudflap %sobject %p: name=`%s'\n"
           "bounds=[%p,%p] size=%lu area=%s check=%ur/%uw liveness=%u%s\n"
           "alloc time=%lu.%06lu pc=%p"



           "\n",
           (obj->deallocated_p ? "dead " : ""),
           (void *) obj, (obj->name ? obj->name : ""),
           (void *) obj->low, (void *) obj->high,
           (unsigned long) (obj->high - obj->low + 1),
           (obj->type == __MF_TYPE_NOACCESS ? "no-access" :
            obj->type == __MF_TYPE_HEAP ? "heap" :
            obj->type == __MF_TYPE_HEAP_I ? "heap-init" :
            obj->type == __MF_TYPE_STACK ? "stack" :
            obj->type == __MF_TYPE_STATIC ? "static" :
            obj->type == __MF_TYPE_GUESS ? "guess" :
            "unknown"),
           obj->read_count, obj->write_count, obj->liveness,
           obj->watching_p ? " watching" : "",
           obj->alloc_time.tv_sec, obj->alloc_time.tv_usec,
           (void *) obj->alloc_pc



           );

  if (__mf_opts.backtrace > 0)
  {
    unsigned i;
    for (i=0; i<obj->alloc_backtrace_size; i++)
      fprintf (stderr, "      %s\n", obj->alloc_backtrace[i]);
  }

  if (__mf_opts.persistent_count > 0)
    {
      if (obj->deallocated_p)
        {
          fprintf (stderr, "dealloc time=%lu.%06lu pc=%p"



                   "\n",
                   obj->dealloc_time.tv_sec, obj->dealloc_time.tv_usec,
                   (void *) obj->dealloc_pc



                   );


          if (__mf_opts.backtrace > 0)
          {
            unsigned i;
            for (i=0; i<obj->dealloc_backtrace_size; i++)
              fprintf (stderr, "      %s\n", obj->dealloc_backtrace[i]);
          }
        }
    }
}
