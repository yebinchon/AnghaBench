; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_iucv_sock_accept.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_iucv_sock_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.sock* }
%struct.sock = type { i64, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@IUCV_LISTEN = common dso_local global i64 0, align 8
@EBADFD = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*, i32)* @iucv_sock_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iucv_sock_accept(%struct.socket* %0, %struct.socket* %1, i32 %2) #0 {
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
  %23 = load i64, i64* @IUCV_LISTEN, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EBADFD, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %10, align 4
  br label %90

28:                                               ; preds = %3
  %29 = load %struct.sock*, %struct.sock** %7, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @O_NONBLOCK, align 4
  %32 = and i32 %30, %31
  %33 = call i64 @sock_rcvtimeo(%struct.sock* %29, i32 %32)
  store i64 %33, i64* %9, align 8
  %34 = load %struct.sock*, %struct.sock** %7, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @add_wait_queue_exclusive(i32 %36, i32* @wait)
  br label %38

38:                                               ; preds = %75, %28
  %39 = load %struct.sock*, %struct.sock** %7, align 8
  %40 = load %struct.socket*, %struct.socket** %5, align 8
  %41 = call %struct.sock* @iucv_accept_dequeue(%struct.sock* %39, %struct.socket* %40)
  store %struct.sock* %41, %struct.sock** %8, align 8
  %42 = icmp ne %struct.sock* %41, null
  %43 = xor i1 %42, true
  br i1 %43, label %44, label %76

44:                                               ; preds = %38
  %45 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %46 = call i32 @set_current_state(i32 %45)
  %47 = load i64, i64* %9, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @EAGAIN, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %10, align 4
  br label %76

52:                                               ; preds = %44
  %53 = load %struct.sock*, %struct.sock** %7, align 8
  %54 = call i32 @release_sock(%struct.sock* %53)
  %55 = load i64, i64* %9, align 8
  %56 = call i64 @schedule_timeout(i64 %55)
  store i64 %56, i64* %9, align 8
  %57 = load %struct.sock*, %struct.sock** %7, align 8
  %58 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %59 = call i32 @lock_sock_nested(%struct.sock* %57, i32 %58)
  %60 = load %struct.sock*, %struct.sock** %7, align 8
  %61 = getelementptr inbounds %struct.sock, %struct.sock* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @IUCV_LISTEN, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %52
  %66 = load i32, i32* @EBADFD, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %10, align 4
  br label %76

68:                                               ; preds = %52
  %69 = load i32, i32* @current, align 4
  %70 = call i64 @signal_pending(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @sock_intr_errno(i64 %73)
  store i32 %74, i32* %10, align 4
  br label %76

75:                                               ; preds = %68
  br label %38

76:                                               ; preds = %72, %65, %49, %38
  %77 = load i32, i32* @TASK_RUNNING, align 4
  %78 = call i32 @set_current_state(i32 %77)
  %79 = load %struct.sock*, %struct.sock** %7, align 8
  %80 = getelementptr inbounds %struct.sock, %struct.sock* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @remove_wait_queue(i32 %81, i32* @wait)
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %90

86:                                               ; preds = %76
  %87 = load i32, i32* @SS_CONNECTED, align 4
  %88 = load %struct.socket*, %struct.socket** %5, align 8
  %89 = getelementptr inbounds %struct.socket, %struct.socket* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %86, %85, %25
  %91 = load %struct.sock*, %struct.sock** %7, align 8
  %92 = call i32 @release_sock(%struct.sock* %91)
  %93 = load i32, i32* %10, align 4
  ret i32 %93
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @lock_sock_nested(%struct.sock*, i32) #1

declare dso_local i64 @sock_rcvtimeo(%struct.sock*, i32) #1

declare dso_local i32 @add_wait_queue_exclusive(i32, i32*) #1

declare dso_local %struct.sock* @iucv_accept_dequeue(%struct.sock*, %struct.socket*) #1

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
