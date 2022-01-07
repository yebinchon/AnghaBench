; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_recv_buffer_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_recv_buffer_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_rep = type { i32*, %struct.rpcrdma_buffer* }
%struct.rpcrdma_buffer = type { i64, i32, %struct.rpcrdma_rep** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpcrdma_recv_buffer_put(%struct.rpcrdma_rep* %0) #0 {
  %2 = alloca %struct.rpcrdma_rep*, align 8
  %3 = alloca %struct.rpcrdma_buffer*, align 8
  %4 = alloca i64, align 8
  store %struct.rpcrdma_rep* %0, %struct.rpcrdma_rep** %2, align 8
  %5 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %2, align 8
  %6 = getelementptr inbounds %struct.rpcrdma_rep, %struct.rpcrdma_rep* %5, i32 0, i32 1
  %7 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %6, align 8
  store %struct.rpcrdma_buffer* %7, %struct.rpcrdma_buffer** %3, align 8
  %8 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %2, align 8
  %9 = getelementptr inbounds %struct.rpcrdma_rep, %struct.rpcrdma_rep* %8, i32 0, i32 0
  store i32* null, i32** %9, align 8
  %10 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %11 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %10, i32 0, i32 1
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %2, align 8
  %15 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %16 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %15, i32 0, i32 2
  %17 = load %struct.rpcrdma_rep**, %struct.rpcrdma_rep*** %16, align 8
  %18 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %19 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add i64 %20, -1
  store i64 %21, i64* %19, align 8
  %22 = getelementptr inbounds %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %17, i64 %21
  store %struct.rpcrdma_rep* %14, %struct.rpcrdma_rep** %22, align 8
  %23 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %24 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %23, i32 0, i32 1
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
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
