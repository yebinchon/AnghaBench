; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_af_bluetooth.c_bt_sock_wait_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_af_bluetooth.c_bt_sock_wait_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"sk %p\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_sock_wait_state(%struct.sock* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* @wait, align 4
  %9 = load i32, i32* @current, align 4
  %10 = call i32 @DECLARE_WAITQUEUE(i32 %8, i32 %9)
  store i32 0, i32* %7, align 4
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call i32 @BT_DBG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.sock* %11)
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @add_wait_queue(i32 %15, i32* @wait)
  br label %17

17:                                               ; preds = %50, %3
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %17
  %24 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %25 = call i32 @set_current_state(i32 %24)
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @EINPROGRESS, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %51

31:                                               ; preds = %23
  %32 = load i32, i32* @current, align 4
  %33 = call i64 @signal_pending(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @sock_intr_errno(i64 %36)
  store i32 %37, i32* %7, align 4
  br label %51

38:                                               ; preds = %31
  %39 = load %struct.sock*, %struct.sock** %4, align 8
  %40 = call i32 @release_sock(%struct.sock* %39)
  %41 = load i64, i64* %6, align 8
  %42 = call i64 @schedule_timeout(i64 %41)
  store i64 %42, i64* %6, align 8
  %43 = load %struct.sock*, %struct.sock** %4, align 8
  %44 = call i32 @lock_sock(%struct.sock* %43)
  %45 = load %struct.sock*, %struct.sock** %4, align 8
  %46 = call i32 @sock_error(%struct.sock* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %51

50:                                               ; preds = %38
  br label %17

51:                                               ; preds = %49, %35, %28, %17
  %52 = load i32, i32* @TASK_RUNNING, align 4
  %53 = call i32 @set_current_state(i32 %52)
  %54 = load %struct.sock*, %struct.sock** %4, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @remove_wait_queue(i32 %56, i32* @wait)
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @BT_DBG(i8*, %struct.sock*) #1

declare dso_local i32 @add_wait_queue(i32, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @sock_error(%struct.sock*) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
