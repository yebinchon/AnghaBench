; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_init_autodisconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_init_autodisconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32, i32, i32, i32 }

@XPRT_LOCKED = common dso_local global i32 0, align 4
@XPRT_CONNECTION_CLOSE = common dso_local global i32 0, align 4
@rpciod_workqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @xprt_init_autodisconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xprt_init_autodisconnect(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.rpc_xprt*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.rpc_xprt*
  store %struct.rpc_xprt* %5, %struct.rpc_xprt** %3, align 8
  %6 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %7 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %10 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %9, i32 0, i32 3
  %11 = call i32 @list_empty(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %33

14:                                               ; preds = %1
  %15 = load i32, i32* @XPRT_LOCKED, align 4
  %16 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %17 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %16, i32 0, i32 2
  %18 = call i64 @test_and_set_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %33

21:                                               ; preds = %14
  %22 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %23 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock(i32* %23)
  %25 = load i32, i32* @XPRT_CONNECTION_CLOSE, align 4
  %26 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %27 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %26, i32 0, i32 2
  %28 = call i32 @set_bit(i32 %25, i32* %27)
  %29 = load i32, i32* @rpciod_workqueue, align 4
  %30 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %31 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %30, i32 0, i32 1
  %32 = call i32 @queue_work(i32 %29, i32* %31)
  br label %37

33:                                               ; preds = %20, %13
  %34 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %35 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock(i32* %35)
  br label %37

37:                                               ; preds = %33, %21
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
