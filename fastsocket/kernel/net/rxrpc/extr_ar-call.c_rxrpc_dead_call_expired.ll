; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-call.c_rxrpc_dead_call_expired.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-call.c_rxrpc_dead_call_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"{%d}\00", align 1
@RXRPC_CALL_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @rxrpc_dead_call_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_dead_call_expired(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.rxrpc_call*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.rxrpc_call*
  store %struct.rxrpc_call* %5, %struct.rxrpc_call** %3, align 8
  %6 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %7 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @_enter(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %11 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %10, i32 0, i32 0
  %12 = call i32 @write_lock_bh(i32* %11)
  %13 = load i32, i32* @RXRPC_CALL_DEAD, align 4
  %14 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %15 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %17 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %16, i32 0, i32 0
  %18 = call i32 @write_unlock_bh(i32* %17)
  %19 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %20 = call i32 @rxrpc_put_call(%struct.rxrpc_call* %19)
  ret void
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @rxrpc_put_call(%struct.rxrpc_call*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
