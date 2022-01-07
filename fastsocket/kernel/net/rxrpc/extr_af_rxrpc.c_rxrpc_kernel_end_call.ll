; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_af_rxrpc.c_rxrpc_kernel_end_call.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_af_rxrpc.c_rxrpc_kernel_end_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%d{%d}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rxrpc_kernel_end_call(%struct.rxrpc_call* %0) #0 {
  %2 = alloca %struct.rxrpc_call*, align 8
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %2, align 8
  %3 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %4 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %7 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %6, i32 0, i32 1
  %8 = call i32 @atomic_read(i32* %7)
  %9 = call i32 @_enter(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %8)
  %10 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %11 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %14 = call i32 @rxrpc_remove_user_ID(i32 %12, %struct.rxrpc_call* %13)
  %15 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %16 = call i32 @rxrpc_put_call(%struct.rxrpc_call* %15)
  ret void
}

declare dso_local i32 @_enter(i8*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @rxrpc_remove_user_ID(i32, %struct.rxrpc_call*) #1

declare dso_local i32 @rxrpc_put_call(%struct.rxrpc_call*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
