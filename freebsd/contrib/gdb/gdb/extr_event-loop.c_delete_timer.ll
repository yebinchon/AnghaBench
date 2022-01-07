; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_event-loop.c_delete_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_event-loop.c_delete_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.gdb_timer* }
%struct.gdb_timer = type { i32, %struct.gdb_timer* }
%struct.TYPE_4__ = type { i64 }

@timer_list = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@gdb_notifier = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_timer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gdb_timer*, align 8
  %4 = alloca %struct.gdb_timer*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.gdb_timer* null, %struct.gdb_timer** %4, align 8
  %5 = load %struct.gdb_timer*, %struct.gdb_timer** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @timer_list, i32 0, i32 0), align 8
  store %struct.gdb_timer* %5, %struct.gdb_timer** %3, align 8
  br label %6

6:                                                ; preds = %17, %1
  %7 = load %struct.gdb_timer*, %struct.gdb_timer** %3, align 8
  %8 = icmp ne %struct.gdb_timer* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = load %struct.gdb_timer*, %struct.gdb_timer** %3, align 8
  %11 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %2, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %21

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %16
  %18 = load %struct.gdb_timer*, %struct.gdb_timer** %3, align 8
  %19 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %18, i32 0, i32 1
  %20 = load %struct.gdb_timer*, %struct.gdb_timer** %19, align 8
  store %struct.gdb_timer* %20, %struct.gdb_timer** %3, align 8
  br label %6

21:                                               ; preds = %15, %6
  %22 = load %struct.gdb_timer*, %struct.gdb_timer** %3, align 8
  %23 = icmp eq %struct.gdb_timer* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %55

25:                                               ; preds = %21
  %26 = load %struct.gdb_timer*, %struct.gdb_timer** %3, align 8
  %27 = load %struct.gdb_timer*, %struct.gdb_timer** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @timer_list, i32 0, i32 0), align 8
  %28 = icmp eq %struct.gdb_timer* %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.gdb_timer*, %struct.gdb_timer** %3, align 8
  %31 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %30, i32 0, i32 1
  %32 = load %struct.gdb_timer*, %struct.gdb_timer** %31, align 8
  store %struct.gdb_timer* %32, %struct.gdb_timer** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @timer_list, i32 0, i32 0), align 8
  br label %52

33:                                               ; preds = %25
  %34 = load %struct.gdb_timer*, %struct.gdb_timer** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @timer_list, i32 0, i32 0), align 8
  store %struct.gdb_timer* %34, %struct.gdb_timer** %4, align 8
  br label %35

35:                                               ; preds = %42, %33
  %36 = load %struct.gdb_timer*, %struct.gdb_timer** %4, align 8
  %37 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %36, i32 0, i32 1
  %38 = load %struct.gdb_timer*, %struct.gdb_timer** %37, align 8
  %39 = load %struct.gdb_timer*, %struct.gdb_timer** %3, align 8
  %40 = icmp ne %struct.gdb_timer* %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.gdb_timer*, %struct.gdb_timer** %4, align 8
  %44 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %43, i32 0, i32 1
  %45 = load %struct.gdb_timer*, %struct.gdb_timer** %44, align 8
  store %struct.gdb_timer* %45, %struct.gdb_timer** %4, align 8
  br label %35

46:                                               ; preds = %35
  %47 = load %struct.gdb_timer*, %struct.gdb_timer** %3, align 8
  %48 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %47, i32 0, i32 1
  %49 = load %struct.gdb_timer*, %struct.gdb_timer** %48, align 8
  %50 = load %struct.gdb_timer*, %struct.gdb_timer** %4, align 8
  %51 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %50, i32 0, i32 1
  store %struct.gdb_timer* %49, %struct.gdb_timer** %51, align 8
  br label %52

52:                                               ; preds = %46, %29
  %53 = load %struct.gdb_timer*, %struct.gdb_timer** %3, align 8
  %54 = call i32 @xfree(%struct.gdb_timer* %53)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gdb_notifier, i32 0, i32 0), align 8
  br label %55

55:                                               ; preds = %52, %24
  ret void
}

declare dso_local i32 @xfree(%struct.gdb_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
