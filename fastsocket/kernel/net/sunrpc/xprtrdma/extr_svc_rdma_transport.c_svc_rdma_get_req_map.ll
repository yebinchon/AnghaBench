; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_svc_rdma_get_req_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_svc_rdma_get_req_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rdma_req_map = type { i32*, i64 }

@svc_rdma_map_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.svc_rdma_req_map* @svc_rdma_get_req_map() #0 {
  %1 = alloca %struct.svc_rdma_req_map*, align 8
  br label %2

2:                                                ; preds = %0, %9
  %3 = load i32, i32* @svc_rdma_map_cachep, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.svc_rdma_req_map* @kmem_cache_alloc(i32 %3, i32 %4)
  store %struct.svc_rdma_req_map* %5, %struct.svc_rdma_req_map** %1, align 8
  %6 = load %struct.svc_rdma_req_map*, %struct.svc_rdma_req_map** %1, align 8
  %7 = icmp ne %struct.svc_rdma_req_map* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %12

9:                                                ; preds = %2
  %10 = call i32 @msecs_to_jiffies(i32 500)
  %11 = call i32 @schedule_timeout_uninterruptible(i32 %10)
  br label %2

12:                                               ; preds = %8
  %13 = load %struct.svc_rdma_req_map*, %struct.svc_rdma_req_map** %1, align 8
  %14 = getelementptr inbounds %struct.svc_rdma_req_map, %struct.svc_rdma_req_map* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.svc_rdma_req_map*, %struct.svc_rdma_req_map** %1, align 8
  %16 = getelementptr inbounds %struct.svc_rdma_req_map, %struct.svc_rdma_req_map* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  %17 = load %struct.svc_rdma_req_map*, %struct.svc_rdma_req_map** %1, align 8
  ret %struct.svc_rdma_req_map* %17
}

declare dso_local %struct.svc_rdma_req_map* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
