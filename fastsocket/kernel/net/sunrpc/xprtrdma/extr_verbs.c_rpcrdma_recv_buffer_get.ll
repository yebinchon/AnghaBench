; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_recv_buffer_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_recv_buffer_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_req = type { i32*, %struct.rpcrdma_buffer*, %struct.TYPE_2__ }
%struct.rpcrdma_buffer = type { i64, i64, i32, i32** }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpcrdma_recv_buffer_get(%struct.rpcrdma_req* %0) #0 {
  %2 = alloca %struct.rpcrdma_req*, align 8
  %3 = alloca %struct.rpcrdma_buffer*, align 8
  %4 = alloca i64, align 8
  store %struct.rpcrdma_req* %0, %struct.rpcrdma_req** %2, align 8
  %5 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %2, align 8
  %6 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %5, i32 0, i32 1
  %7 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %6, align 8
  store %struct.rpcrdma_buffer* %7, %struct.rpcrdma_buffer** %3, align 8
  %8 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %2, align 8
  %9 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %15 = bitcast %struct.rpcrdma_buffer* %14 to %struct.rpcrdma_req*
  %16 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %15, i32 0, i32 1
  %17 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %16, align 8
  store %struct.rpcrdma_buffer* %17, %struct.rpcrdma_buffer** %3, align 8
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %20 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %19, i32 0, i32 2
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %24 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %27 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %18
  %31 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %32 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %31, i32 0, i32 3
  %33 = load i32**, i32*** %32, align 8
  %34 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %35 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32*, i32** %33, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %2, align 8
  %40 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  %41 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %42 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %41, i32 0, i32 3
  %43 = load i32**, i32*** %42, align 8
  %44 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %45 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %45, align 8
  %48 = getelementptr inbounds i32*, i32** %43, i64 %46
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %30, %18
  %50 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %51 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %50, i32 0, i32 2
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
