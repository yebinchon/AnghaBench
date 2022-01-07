; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_sock.c_rfcomm_sock_accept.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_sock.c_rfcomm_sock_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.sock* }
%struct.sock = type { i64, i64, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@BT_LISTEN = common dso_local global i64 0, align 8
@EBADFD = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"sk %p timeo %ld\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"new socket %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*, i32)* @rfcomm_sock_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_sock_accept(%struct.socket* %0, %struct.socket* %1, i32 %2) #0 {
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
  br label %102

27:                                               ; preds = %3
  %28 = load %struct.sock*, %struct.sock** %7, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SOCK_STREAM, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %10, align 4
  br label %102

36:                                               ; preds = %27
  %37 = load %struct.sock*, %struct.sock** %7, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @O_NONBLOCK, align 4
  %40 = and i32 %38, %39
  %41 = call i64 @sock_rcvtimeo(%struct.sock* %37, i32 %40)
  store i64 %41, i64* %9, align 8
  %42 = load %struct.sock*, %struct.sock** %7, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 (i8*, %struct.sock*, ...) @BT_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.sock* %42, i64 %43)
  %45 = load %struct.sock*, %struct.sock** %7, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @add_wait_queue_exclusive(i32 %47, i32* @wait)
  br label %49

49:                                               ; preds = %85, %36
  %50 = load %struct.sock*, %struct.sock** %7, align 8
  %51 = load %struct.socket*, %struct.socket** %5, align 8
  %52 = call %struct.sock* @bt_accept_dequeue(%struct.sock* %50, %struct.socket* %51)
  store %struct.sock* %52, %struct.sock** %8, align 8
  %53 = icmp ne %struct.sock* %52, null
  %54 = xor i1 %53, true
  br i1 %54, label %55, label %86

55:                                               ; preds = %49
  %56 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %57 = call i32 @set_current_state(i32 %56)
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @EAGAIN, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %10, align 4
  br label %86

63:                                               ; preds = %55
  %64 = load %struct.sock*, %struct.sock** %7, align 8
  %65 = call i32 @release_sock(%struct.sock* %64)
  %66 = load i64, i64* %9, align 8
  %67 = call i64 @schedule_timeout(i64 %66)
  store i64 %67, i64* %9, align 8
  %68 = load %struct.sock*, %struct.sock** %7, align 8
  %69 = call i32 @lock_sock(%struct.sock* %68)
  %70 = load %struct.sock*, %struct.sock** %7, align 8
  %71 = getelementptr inbounds %struct.sock, %struct.sock* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @BT_LISTEN, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %63
  %76 = load i32, i32* @EBADFD, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %10, align 4
  br label %86

78:                                               ; preds = %63
  %79 = load i32, i32* @current, align 4
  %80 = call i64 @signal_pending(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i64, i64* %9, align 8
  %84 = call i32 @sock_intr_errno(i64 %83)
  store i32 %84, i32* %10, align 4
  br label %86

85:                                               ; preds = %78
  br label %49

86:                                               ; preds = %82, %75, %60, %49
  %87 = load i32, i32* @TASK_RUNNING, align 4
  %88 = call i32 @set_current_state(i32 %87)
  %89 = load %struct.sock*, %struct.sock** %7, align 8
  %90 = getelementptr inbounds %struct.sock, %struct.sock* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @remove_wait_queue(i32 %91, i32* @wait)
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  br label %102

96:                                               ; preds = %86
  %97 = load i32, i32* @SS_CONNECTED, align 4
  %98 = load %struct.socket*, %struct.socket** %5, align 8
  %99 = getelementptr inbounds %struct.socket, %struct.socket* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.sock*, %struct.sock** %8, align 8
  %101 = call i32 (i8*, %struct.sock*, ...) @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.sock* %100)
  br label %102

102:                                              ; preds = %96, %95, %33, %24
  %103 = load %struct.sock*, %struct.sock** %7, align 8
  %104 = call i32 @release_sock(%struct.sock* %103)
  %105 = load i32, i32* %10, align 4
  ret i32 %105
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
