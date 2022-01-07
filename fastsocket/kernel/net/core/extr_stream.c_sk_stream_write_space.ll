; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_stream.c_sk_stream_write_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_stream.c_sk_stream_write_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i64, %struct.socket* }
%struct.socket = type { i64, i32 }

@SOCK_NOSPACE = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@POLLWRBAND = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@SOCK_WAKE_SPACE = common dso_local global i32 0, align 4
@POLL_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sk_stream_write_space(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.socket*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = getelementptr inbounds %struct.sock, %struct.sock* %4, i32 0, i32 2
  %6 = load %struct.socket*, %struct.socket** %5, align 8
  store %struct.socket* %6, %struct.socket** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call i64 @sk_stream_wspace(%struct.sock* %7)
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call i64 @sk_stream_min_wspace(%struct.sock* %9)
  %11 = icmp sge i64 %8, %10
  br i1 %11, label %12, label %58

12:                                               ; preds = %1
  %13 = load %struct.socket*, %struct.socket** %3, align 8
  %14 = icmp ne %struct.socket* %13, null
  br i1 %14, label %15, label %58

15:                                               ; preds = %12
  %16 = load i32, i32* @SOCK_NOSPACE, align 4
  %17 = load %struct.socket*, %struct.socket** %3, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 1
  %19 = call i32 @clear_bit(i32 %16, i32* %18)
  %20 = load %struct.sock*, %struct.sock** %2, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %15
  %25 = load %struct.sock*, %struct.sock** %2, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @waitqueue_active(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load %struct.sock*, %struct.sock** %2, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @POLLOUT, align 4
  %35 = load i32, i32* @POLLWRNORM, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @POLLWRBAND, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @wake_up_interruptible_poll(i64 %33, i32 %38)
  br label %40

40:                                               ; preds = %30, %24, %15
  %41 = load %struct.socket*, %struct.socket** %3, align 8
  %42 = getelementptr inbounds %struct.socket, %struct.socket* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load %struct.sock*, %struct.sock** %2, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SEND_SHUTDOWN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %45
  %53 = load %struct.socket*, %struct.socket** %3, align 8
  %54 = load i32, i32* @SOCK_WAKE_SPACE, align 4
  %55 = load i32, i32* @POLL_OUT, align 4
  %56 = call i32 @sock_wake_async(%struct.socket* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %45, %40
  br label %58

58:                                               ; preds = %57, %12, %1
  ret void
}

declare dso_local i64 @sk_stream_wspace(%struct.sock*) #1

declare dso_local i64 @sk_stream_min_wspace(%struct.sock*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @waitqueue_active(i64) #1

declare dso_local i32 @wake_up_interruptible_poll(i64, i32) #1

declare dso_local i32 @sock_wake_async(%struct.socket*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
