; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c___xprt_lock_write_next_cong.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c___xprt_lock_write_next_cong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32, i32 }

@XPRT_LOCKED = common dso_local global i32 0, align 4
@__xprt_lock_write_cong_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_xprt*)* @__xprt_lock_write_next_cong to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__xprt_lock_write_next_cong(%struct.rpc_xprt* %0) #0 {
  %2 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %2, align 8
  %3 = load i32, i32* @XPRT_LOCKED, align 4
  %4 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %5 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %4, i32 0, i32 1
  %6 = call i64 @test_and_set_bit(i32 %3, i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %26

9:                                                ; preds = %1
  %10 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %11 = call i64 @RPCXPRT_CONGESTED(%struct.rpc_xprt* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %23

14:                                               ; preds = %9
  %15 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %16 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %15, i32 0, i32 0
  %17 = load i32, i32* @__xprt_lock_write_cong_func, align 4
  %18 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %19 = call i64 @rpc_wake_up_first(i32* %16, i32 %17, %struct.rpc_xprt* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %26

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22, %13
  %24 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %25 = call i32 @xprt_clear_locked(%struct.rpc_xprt* %24)
  br label %26

26:                                               ; preds = %23, %21, %8
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @RPCXPRT_CONGESTED(%struct.rpc_xprt*) #1

declare dso_local i64 @rpc_wake_up_first(i32*, i32, %struct.rpc_xprt*) #1

declare dso_local i32 @xprt_clear_locked(%struct.rpc_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
