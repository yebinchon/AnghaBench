; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_event-loop.c_handle_timer_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_event-loop.c_handle_timer_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.gdb_timer* }
%struct.gdb_timer = type { i32, i32 (i32)*, %struct.gdb_timer*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.timeval = type { i64, i64 }

@timer_list = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@gdb_notifier = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @handle_timer_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_timer_event(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timeval, align 8
  %4 = alloca %struct.gdb_timer*, align 8
  %5 = alloca %struct.gdb_timer*, align 8
  store i32 %0, i32* %2, align 4
  %6 = call i32 @gettimeofday(%struct.timeval* %3, i32* null)
  %7 = load %struct.gdb_timer*, %struct.gdb_timer** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @timer_list, i32 0, i32 0), align 8
  store %struct.gdb_timer* %7, %struct.gdb_timer** %4, align 8
  br label %8

8:                                                ; preds = %36, %1
  %9 = load %struct.gdb_timer*, %struct.gdb_timer** %4, align 8
  %10 = icmp ne %struct.gdb_timer* %9, null
  br i1 %10, label %11, label %53

11:                                               ; preds = %8
  %12 = load %struct.gdb_timer*, %struct.gdb_timer** %4, align 8
  %13 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %15, %17
  br i1 %18, label %35, label %19

19:                                               ; preds = %11
  %20 = load %struct.gdb_timer*, %struct.gdb_timer** %4, align 8
  %21 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %23, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %19
  %28 = load %struct.gdb_timer*, %struct.gdb_timer** %4, align 8
  %29 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27, %11
  br label %53

36:                                               ; preds = %27, %19
  %37 = load %struct.gdb_timer*, %struct.gdb_timer** %4, align 8
  %38 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %37, i32 0, i32 2
  %39 = load %struct.gdb_timer*, %struct.gdb_timer** %38, align 8
  store %struct.gdb_timer* %39, %struct.gdb_timer** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @timer_list, i32 0, i32 0), align 8
  %40 = load %struct.gdb_timer*, %struct.gdb_timer** %4, align 8
  store %struct.gdb_timer* %40, %struct.gdb_timer** %5, align 8
  %41 = load %struct.gdb_timer*, %struct.gdb_timer** %4, align 8
  %42 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %41, i32 0, i32 2
  %43 = load %struct.gdb_timer*, %struct.gdb_timer** %42, align 8
  store %struct.gdb_timer* %43, %struct.gdb_timer** %4, align 8
  %44 = load %struct.gdb_timer*, %struct.gdb_timer** %5, align 8
  %45 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %44, i32 0, i32 1
  %46 = load i32 (i32)*, i32 (i32)** %45, align 8
  %47 = load %struct.gdb_timer*, %struct.gdb_timer** %5, align 8
  %48 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 %46(i32 %49)
  %51 = load %struct.gdb_timer*, %struct.gdb_timer** %5, align 8
  %52 = call i32 @xfree(%struct.gdb_timer* %51)
  br label %8

53:                                               ; preds = %35, %8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gdb_notifier, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @xfree(%struct.gdb_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
