; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-output.c_rxrpc_wait_for_tx_window.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-output.c_rxrpc_wait_for_tx_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_sock = type { i32 }
%struct.rxrpc_call = type { i32, i32, i32, i32 }

@myself = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c",{%d},%ld\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_sock*, %struct.rxrpc_call*, i64*)* @rxrpc_wait_for_tx_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_wait_for_tx_window(%struct.rxrpc_sock* %0, %struct.rxrpc_call* %1, i64* %2) #0 {
  %4 = alloca %struct.rxrpc_sock*, align 8
  %5 = alloca %struct.rxrpc_call*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.rxrpc_sock* %0, %struct.rxrpc_sock** %4, align 8
  store %struct.rxrpc_call* %1, %struct.rxrpc_call** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load i32, i32* @myself, align 4
  %9 = load i32, i32* @current, align 4
  %10 = call i32 @DECLARE_WAITQUEUE(i32 %8, i32 %9)
  %11 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %12 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %15 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %18 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @CIRC_SPACE(i32 %13, i32 %16, i32 %19)
  %21 = load i64*, i64** %6, align 8
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @_enter(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %20, i64 %22)
  %24 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %25 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %24, i32 0, i32 0
  %26 = call i32 @add_wait_queue(i32* %25, i32* @myself)
  br label %27

27:                                               ; preds = %50, %3
  %28 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %29 = call i32 @set_current_state(i32 %28)
  store i32 0, i32* %7, align 4
  %30 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %31 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %34 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %37 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @CIRC_SPACE(i32 %32, i32 %35, i32 %38)
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  br label %61

42:                                               ; preds = %27
  %43 = load i32, i32* @current, align 4
  %44 = call i64 @signal_pending(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i64*, i64** %6, align 8
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @sock_intr_errno(i64 %48)
  store i32 %49, i32* %7, align 4
  br label %61

50:                                               ; preds = %42
  %51 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %4, align 8
  %52 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %51, i32 0, i32 0
  %53 = call i32 @release_sock(i32* %52)
  %54 = load i64*, i64** %6, align 8
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @schedule_timeout(i64 %55)
  %57 = load i64*, i64** %6, align 8
  store i64 %56, i64* %57, align 8
  %58 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %4, align 8
  %59 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %58, i32 0, i32 0
  %60 = call i32 @lock_sock(i32* %59)
  br label %27

61:                                               ; preds = %46, %41
  %62 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %63 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %62, i32 0, i32 0
  %64 = call i32 @remove_wait_queue(i32* %63, i32* @myself)
  %65 = load i32, i32* @TASK_RUNNING, align 4
  %66 = call i32 @set_current_state(i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @_enter(i8*, i64, i64) #1

declare dso_local i64 @CIRC_SPACE(i32, i32, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local i32 @release_sock(i32*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @lock_sock(i32*) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
