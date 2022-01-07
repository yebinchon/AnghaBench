; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_af_unix.c_unix_stream_data_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_af_unix.c_unix_stream_data_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@wait = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@SOCK_ASYNC_WAITDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sock*, i64)* @unix_stream_data_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @unix_stream_data_wait(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* @wait, align 4
  %6 = call i32 @DEFINE_WAIT(i32 %5)
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call i32 @unix_state_lock(%struct.sock* %7)
  br label %9

9:                                                ; preds = %39, %2
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = getelementptr inbounds %struct.sock, %struct.sock* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %14 = call i32 @prepare_to_wait(i32 %12, i32* @wait, i32 %13)
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 4
  %17 = call i32 @skb_queue_empty(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %9
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %19
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @RCV_SHUTDOWN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @current, align 4
  %33 = call i64 @signal_pending(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %4, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35, %31, %24, %19, %9
  br label %58

39:                                               ; preds = %35
  %40 = load i32, i32* @SOCK_ASYNC_WAITDATA, align 4
  %41 = load %struct.sock*, %struct.sock** %3, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @set_bit(i32 %40, i32* %44)
  %46 = load %struct.sock*, %struct.sock** %3, align 8
  %47 = call i32 @unix_state_unlock(%struct.sock* %46)
  %48 = load i64, i64* %4, align 8
  %49 = call i64 @schedule_timeout(i64 %48)
  store i64 %49, i64* %4, align 8
  %50 = load %struct.sock*, %struct.sock** %3, align 8
  %51 = call i32 @unix_state_lock(%struct.sock* %50)
  %52 = load i32, i32* @SOCK_ASYNC_WAITDATA, align 4
  %53 = load %struct.sock*, %struct.sock** %3, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @clear_bit(i32 %52, i32* %56)
  br label %9

58:                                               ; preds = %38
  %59 = load %struct.sock*, %struct.sock** %3, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @finish_wait(i32 %61, i32* @wait)
  %63 = load %struct.sock*, %struct.sock** %3, align 8
  %64 = call i32 @unix_state_unlock(%struct.sock* %63)
  %65 = load i64, i64* %4, align 8
  ret i64 %65
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @unix_state_lock(%struct.sock*) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @unix_state_unlock(%struct.sock*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
