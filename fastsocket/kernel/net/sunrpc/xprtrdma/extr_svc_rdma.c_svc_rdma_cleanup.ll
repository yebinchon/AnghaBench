; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma.c_svc_rdma_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma.c_svc_rdma_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [55 x i8] c"SVCRDMA Module Removed, deregister RPC RDMA transport\0A\00", align 1
@svcrdma_table_header = common dso_local global i32* null, align 8
@svc_rdma_class = common dso_local global i32 0, align 4
@svc_rdma_map_cachep = common dso_local global i32 0, align 4
@svc_rdma_ctxt_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_rdma_cleanup() #0 {
  %1 = call i32 @dprintk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 (...) @flush_scheduled_work()
  %3 = load i32*, i32** @svcrdma_table_header, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32*, i32** @svcrdma_table_header, align 8
  %7 = call i32 @unregister_sysctl_table(i32* %6)
  store i32* null, i32** @svcrdma_table_header, align 8
  br label %8

8:                                                ; preds = %5, %0
  %9 = call i32 @svc_unreg_xprt_class(i32* @svc_rdma_class)
  %10 = load i32, i32* @svc_rdma_map_cachep, align 4
  %11 = call i32 @kmem_cache_destroy(i32 %10)
  %12 = load i32, i32* @svc_rdma_ctxt_cachep, align 4
  %13 = call i32 @kmem_cache_destroy(i32 %12)
  ret void
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @unregister_sysctl_table(i32*) #1

declare dso_local i32 @svc_unreg_xprt_class(i32*) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
