; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_af_x25.c_x25_wait_for_connection_establishment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_af_x25.c_x25_wait_for_connection_establishment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @x25_wait_for_connection_establishment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25_wait_for_connection_establishment(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load i32, i32* @wait, align 4
  %5 = load i32, i32* @current, align 4
  %6 = call i32 @DECLARE_WAITQUEUE(i32 %4, i32 %5)
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @add_wait_queue_exclusive(i32 %9, i32* @wait)
  br label %11

11:                                               ; preds = %44, %1
  %12 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %13 = call i32 @__set_current_state(i32 %12)
  %14 = load i32, i32* @ERESTARTSYS, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @current, align 4
  %17 = call i64 @signal_pending(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  br label %45

20:                                               ; preds = %11
  %21 = load %struct.sock*, %struct.sock** %2, align 8
  %22 = call i32 @sock_error(%struct.sock* %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i32, i32* @SS_UNCONNECTED, align 4
  %27 = load %struct.sock*, %struct.sock** %2, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 4
  br label %45

31:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  %32 = load %struct.sock*, %struct.sock** %2, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TCP_ESTABLISHED, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.sock*, %struct.sock** %2, align 8
  %39 = call i32 @release_sock(%struct.sock* %38)
  %40 = call i32 (...) @schedule()
  %41 = load %struct.sock*, %struct.sock** %2, align 8
  %42 = call i32 @lock_sock(%struct.sock* %41)
  br label %44

43:                                               ; preds = %31
  br label %45

44:                                               ; preds = %37
  br label %11

45:                                               ; preds = %43, %25, %19
  %46 = load i32, i32* @TASK_RUNNING, align 4
  %47 = call i32 @__set_current_state(i32 %46)
  %48 = load %struct.sock*, %struct.sock** %2, align 8
  %49 = getelementptr inbounds %struct.sock, %struct.sock* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @remove_wait_queue(i32 %50, i32* @wait)
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @add_wait_queue_exclusive(i32, i32*) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @sock_error(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
