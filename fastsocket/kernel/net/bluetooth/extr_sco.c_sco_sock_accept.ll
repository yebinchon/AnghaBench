; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_sco.c_sco_sock_accept.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_sco.c_sco_sock_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.sock* }
%struct.sock = type { i64, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@BT_LISTEN = common dso_local global i64 0, align 8
@EBADFD = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"sk %p timeo %ld\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"new socket %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*, i32)* @sco_sock_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sco_sock_accept(%struct.socket* %0, %struct.socket* %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @wait, align 4
  %12 = load i32, i32* @current, align 4
  %13 = call i32 @DECLARE_WAITQUEUE(i32 %11, i32 %12)
  %14 = load %struct.socket*, %struct.socket** %4, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 1
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %7, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.sock*, %struct.sock** %7, align 8
  %18 = call i32 @lock_sock(%struct.sock* %17)
  %19 = load %struct.sock*, %struct.sock** %7, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BT_LISTEN, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EBADFD, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %10, align 4
  br label %93

27:                                               ; preds = %3
  %28 = load %struct.sock*, %struct.sock** %7, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @O_NONBLOCK, align 4
  %31 = and i32 %29, %30
  %32 = call i64 @sock_rcvtimeo(%struct.sock* %28, i32 %31)
  store i64 %32, i64* %9, align 8
  %33 = load %struct.sock*, %struct.sock** %7, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i32 (i8*, %struct.sock*, ...) @BT_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.sock* %33, i64 %34)
  %36 = load %struct.sock*, %struct.sock** %7, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @add_wait_queue_exclusive(i32 %38, i32* @wait)
  br label %40

40:                                               ; preds = %76, %27
  %41 = load %struct.sock*, %struct.sock** %7, align 8
  %42 = load %struct.socket*, %struct.socket** %5, align 8
  %43 = call %struct.sock* @bt_accept_dequeue(%struct.sock* %41, %struct.socket* %42)
  store %struct.sock* %43, %struct.sock** %8, align 8
  %44 = icmp ne %struct.sock* %43, null
  %45 = xor i1 %44, true
  br i1 %45, label %46, label %77

46:                                               ; preds = %40
  %47 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %48 = call i32 @set_current_state(i32 %47)
  %49 = load i64, i64* %9, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @EAGAIN, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %10, align 4
  br label %77

54:                                               ; preds = %46
  %55 = load %struct.sock*, %struct.sock** %7, align 8
  %56 = call i32 @release_sock(%struct.sock* %55)
  %57 = load i64, i64* %9, align 8
  %58 = call i64 @schedule_timeout(i64 %57)
  store i64 %58, i64* %9, align 8
  %59 = load %struct.sock*, %struct.sock** %7, align 8
  %60 = call i32 @lock_sock(%struct.sock* %59)
  %61 = load %struct.sock*, %struct.sock** %7, align 8
  %62 = getelementptr inbounds %struct.sock, %struct.sock* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @BT_LISTEN, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %54
  %67 = load i32, i32* @EBADFD, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %10, align 4
  br label %77

69:                                               ; preds = %54
  %70 = load i32, i32* @current, align 4
  %71 = call i64 @signal_pending(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @sock_intr_errno(i64 %74)
  store i32 %75, i32* %10, align 4
  br label %77

76:                                               ; preds = %69
  br label %40

77:                                               ; preds = %73, %66, %51, %40
  %78 = load i32, i32* @TASK_RUNNING, align 4
  %79 = call i32 @set_current_state(i32 %78)
  %80 = load %struct.sock*, %struct.sock** %7, align 8
  %81 = getelementptr inbounds %struct.sock, %struct.sock* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @remove_wait_queue(i32 %82, i32* @wait)
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %93

87:                                               ; preds = %77
  %88 = load i32, i32* @SS_CONNECTED, align 4
  %89 = load %struct.socket*, %struct.socket** %5, align 8
  %90 = getelementptr inbounds %struct.socket, %struct.socket* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.sock*, %struct.sock** %8, align 8
  %92 = call i32 (i8*, %struct.sock*, ...) @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.sock* %91)
  br label %93

93:                                               ; preds = %87, %86, %24
  %94 = load %struct.sock*, %struct.sock** %7, align 8
  %95 = call i32 @release_sock(%struct.sock* %94)
  %96 = load i32, i32* %10, align 4
  ret i32 %96
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_rcvtimeo(%struct.sock*, i32) #1

declare dso_local i32 @BT_DBG(i8*, %struct.sock*, ...) #1

declare dso_local i32 @add_wait_queue_exclusive(i32, i32*) #1

declare dso_local %struct.sock* @bt_accept_dequeue(%struct.sock*, %struct.socket*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
