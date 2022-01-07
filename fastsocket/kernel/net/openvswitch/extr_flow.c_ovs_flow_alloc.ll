; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_ovs_flow_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_ovs_flow_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow = type { i32*, i32 }

@flow_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sw_flow* @ovs_flow_alloc() #0 {
  %1 = alloca %struct.sw_flow*, align 8
  %2 = alloca %struct.sw_flow*, align 8
  %3 = load i32, i32* @flow_cache, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.sw_flow* @kmem_cache_alloc(i32 %3, i32 %4)
  store %struct.sw_flow* %5, %struct.sw_flow** %2, align 8
  %6 = load %struct.sw_flow*, %struct.sw_flow** %2, align 8
  %7 = icmp ne %struct.sw_flow* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.sw_flow* @ERR_PTR(i32 %10)
  store %struct.sw_flow* %11, %struct.sw_flow** %1, align 8
  br label %19

12:                                               ; preds = %0
  %13 = load %struct.sw_flow*, %struct.sw_flow** %2, align 8
  %14 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %13, i32 0, i32 1
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load %struct.sw_flow*, %struct.sw_flow** %2, align 8
  %17 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  %18 = load %struct.sw_flow*, %struct.sw_flow** %2, align 8
  store %struct.sw_flow* %18, %struct.sw_flow** %1, align 8
  br label %19

19:                                               ; preds = %12, %8
  %20 = load %struct.sw_flow*, %struct.sw_flow** %1, align 8
  ret %struct.sw_flow* %20
}

declare dso_local %struct.sw_flow* @kmem_cache_alloc(i32, i32) #1

declare dso_local %struct.sw_flow* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
