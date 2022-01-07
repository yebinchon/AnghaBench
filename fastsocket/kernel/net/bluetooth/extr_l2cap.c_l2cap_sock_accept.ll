; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_sock_accept.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_sock_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.sock* }
%struct.sock = type { i64, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@BT_LISTEN = common dso_local global i64 0, align 8
@EBADFD = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"sk %p timeo %ld\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"new socket %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*, i32)* @l2cap_sock_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_sock_accept(%struct.socket* %0, %struct.socket* %1, i32 %2) #0 {
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
  %18 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %19 = call i32 @lock_sock_nested(%struct.sock* %17, i32 %18)
  %20 = load %struct.sock*, %struct.sock** %7, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BT_LISTEN, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EBADFD, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %10, align 4
  br label %95

28:                                               ; preds = %3
  %29 = load %struct.sock*, %struct.sock** %7, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @O_NONBLOCK, align 4
  %32 = and i32 %30, %31
  %33 = call i64 @sock_rcvtimeo(%struct.sock* %29, i32 %32)
  store i64 %33, i64* %9, align 8
  %34 = load %struct.sock*, %struct.sock** %7, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i32 (i8*, %struct.sock*, ...) @BT_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.sock* %34, i64 %35)
  %37 = load %struct.sock*, %struct.sock** %7, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @add_wait_queue_exclusive(i32 %39, i32* @wait)
  br label %41

41:                                               ; preds = %78, %28
  %42 = load %struct.sock*, %struct.sock** %7, align 8
  %43 = load %struct.socket*, %struct.socket** %5, align 8
  %44 = call %struct.sock* @bt_accept_dequeue(%struct.sock* %42, %struct.socket* %43)
  store %struct.sock* %44, %struct.sock** %8, align 8
  %45 = icmp ne %struct.sock* %44, null
  %46 = xor i1 %45, true
  br i1 %46, label %47, label %79

47:                                               ; preds = %41
  %48 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %49 = call i32 @set_current_state(i32 %48)
  %50 = load i64, i64* %9, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @EAGAIN, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %10, align 4
  br label %79

55:                                               ; preds = %47
  %56 = load %struct.sock*, %struct.sock** %7, align 8
  %57 = call i32 @release_sock(%struct.sock* %56)
  %58 = load i64, i64* %9, align 8
  %59 = call i64 @schedule_timeout(i64 %58)
  store i64 %59, i64* %9, align 8
  %60 = load %struct.sock*, %struct.sock** %7, align 8
  %61 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %62 = call i32 @lock_sock_nested(%struct.sock* %60, i32 %61)
  %63 = load %struct.sock*, %struct.sock** %7, align 8
  %64 = getelementptr inbounds %struct.sock, %struct.sock* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @BT_LISTEN, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %55
  %69 = load i32, i32* @EBADFD, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %10, align 4
  br label %79

71:                                               ; preds = %55
  %72 = load i32, i32* @current, align 4
  %73 = call i64 @signal_pending(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @sock_intr_errno(i64 %76)
  store i32 %77, i32* %10, align 4
  br label %79

78:                                               ; preds = %71
  br label %41

79:                                               ; preds = %75, %68, %52, %41
  %80 = load i32, i32* @TASK_RUNNING, align 4
  %81 = call i32 @set_current_state(i32 %80)
  %82 = load %struct.sock*, %struct.sock** %7, align 8
  %83 = getelementptr inbounds %struct.sock, %struct.sock* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @remove_wait_queue(i32 %84, i32* @wait)
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %95

89:                                               ; preds = %79
  %90 = load i32, i32* @SS_CONNECTED, align 4
  %91 = load %struct.socket*, %struct.socket** %5, align 8
  %92 = getelementptr inbounds %struct.socket, %struct.socket* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.sock*, %struct.sock** %8, align 8
  %94 = call i32 (i8*, %struct.sock*, ...) @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.sock* %93)
  br label %95

95:                                               ; preds = %89, %88, %25
  %96 = load %struct.sock*, %struct.sock** %7, align 8
  %97 = call i32 @release_sock(%struct.sock* %96)
  %98 = load i32, i32* %10, align 4
  ret i32 %98
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @lock_sock_nested(%struct.sock*, i32) #1

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
