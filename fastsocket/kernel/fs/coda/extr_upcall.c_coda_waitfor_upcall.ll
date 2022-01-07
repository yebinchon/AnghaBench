; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_upcall.c_coda_waitfor_upcall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_upcall.c_coda_waitfor_upcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upc_req = type { i32, i32, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@coda_timeout = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@REQ_WRITE = common dso_local global i32 0, align 4
@REQ_ABORT = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.upc_req*)* @coda_waitfor_upcall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coda_waitfor_upcall(%struct.upc_req* %0) #0 {
  %2 = alloca %struct.upc_req*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.upc_req* %0, %struct.upc_req** %2, align 8
  %6 = load i32, i32* @wait, align 4
  %7 = load i32, i32* @current, align 4
  %8 = call i32 @DECLARE_WAITQUEUE(i32 %6, i32 %7)
  %9 = load i64, i64* @jiffies, align 8
  %10 = load i64, i64* @coda_timeout, align 8
  %11 = load i64, i64* @HZ, align 8
  %12 = mul i64 %10, %11
  %13 = add i64 %9, %12
  store i64 %13, i64* %3, align 8
  %14 = call i32 @coda_block_signals(i32* %4)
  store i32 1, i32* %5, align 4
  %15 = load %struct.upc_req*, %struct.upc_req** %2, align 8
  %16 = getelementptr inbounds %struct.upc_req, %struct.upc_req* %15, i32 0, i32 1
  %17 = call i32 @add_wait_queue(i32* %16, i32* @wait)
  br label %18

18:                                               ; preds = %68, %1
  %19 = load %struct.upc_req*, %struct.upc_req** %2, align 8
  %20 = call i64 @CODA_INTERRUPTIBLE(%struct.upc_req* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %24 = call i32 @set_current_state(i32 %23)
  br label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %27 = call i32 @set_current_state(i32 %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load %struct.upc_req*, %struct.upc_req** %2, align 8
  %30 = getelementptr inbounds %struct.upc_req, %struct.upc_req* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @REQ_WRITE, align 4
  %33 = load i32, i32* @REQ_ABORT, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %69

38:                                               ; preds = %28
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load i64, i64* @jiffies, align 8
  %43 = load i64, i64* %3, align 8
  %44 = call i64 @time_after(i64 %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.upc_req*, %struct.upc_req** %2, align 8
  %48 = call i64 @CODA_INTERRUPTIBLE(%struct.upc_req* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = call i32 @coda_unblock_signals(i32* %4)
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %46, %41, %38
  %53 = load i32, i32* @current, align 4
  %54 = call i64 @signal_pending(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load %struct.upc_req*, %struct.upc_req** %2, align 8
  %58 = getelementptr inbounds %struct.upc_req, %struct.upc_req* %57, i32 0, i32 2
  %59 = call i32 @list_del(i32* %58)
  br label %69

60:                                               ; preds = %52
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i64, i64* @HZ, align 8
  %65 = call i32 @schedule_timeout(i64 %64)
  br label %68

66:                                               ; preds = %60
  %67 = call i32 (...) @schedule()
  br label %68

68:                                               ; preds = %66, %63
  br label %18

69:                                               ; preds = %56, %37
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = call i32 @coda_unblock_signals(i32* %4)
  br label %74

74:                                               ; preds = %72, %69
  %75 = load %struct.upc_req*, %struct.upc_req** %2, align 8
  %76 = getelementptr inbounds %struct.upc_req, %struct.upc_req* %75, i32 0, i32 1
  %77 = call i32 @remove_wait_queue(i32* %76, i32* @wait)
  %78 = load i32, i32* @TASK_RUNNING, align 4
  %79 = call i32 @set_current_state(i32 %78)
  ret void
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @coda_block_signals(i32*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i64 @CODA_INTERRUPTIBLE(%struct.upc_req*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @coda_unblock_signals(i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @schedule_timeout(i64) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
