; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_write_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_write_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32, i64, i32 }

@.str = private unnamed_addr constant [56 x i8] c"RPC:       write space: waking waiting task on xprt %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xprt_write_space(%struct.rpc_xprt* %0) #0 {
  %2 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %2, align 8
  %3 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %4 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %3, i32 0, i32 0
  %5 = call i32 @spin_lock_bh(i32* %4)
  %6 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %7 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %12 = call i32 @dprintk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), %struct.rpc_xprt* %11)
  %13 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %14 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %13, i32 0, i32 2
  %15 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %16 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @rpc_wake_up_queued_task(i32* %14, i64 %17)
  br label %19

19:                                               ; preds = %10, %1
  %20 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %21 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock_bh(i32* %21)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @dprintk(i8*, %struct.rpc_xprt*) #1

declare dso_local i32 @rpc_wake_up_queued_task(i32*, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
