; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_clock.c_softclock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_clock.c_softclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_4__*, i32, i32 (i32)* }

@task_notify_todo = common dso_local global i64 0, align 8
@callouts = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @softclock() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32 (i32)**, align 8
  %5 = alloca i32, align 4
  br label %6

6:                                                ; preds = %42, %0
  %7 = load i64, i64* @task_notify_todo, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = call i32 (...) @do_task_notify()
  br label %11

11:                                               ; preds = %9, %6
  %12 = call i64 @clocktime(i32* null)
  store i64 %12, i64* %2, align 8
  br label %13

13:                                               ; preds = %24, %11
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @callouts, i32 0, i32 0), align 8
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %3, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %2, align 8
  %21 = icmp sle i64 %19, %20
  br label %22

22:                                               ; preds = %16, %13
  %23 = phi i1 [ false, %13 ], [ %21, %16 ]
  br i1 %23, label %24, label %41

24:                                               ; preds = %22
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  %27 = load i32 (i32)*, i32 (i32)** %26, align 8
  %28 = bitcast i32 (i32)* %27 to i32 (i32)**
  store i32 (i32)** %28, i32 (i32)*** %4, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %5, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @callouts, i32 0, i32 0), align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = call i32 @free_callout(%struct.TYPE_4__* %35)
  %37 = load i32 (i32)**, i32 (i32)*** %4, align 8
  %38 = load i32 (i32)*, i32 (i32)** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 %38(i32 %39)
  br label %13

41:                                               ; preds = %22
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* @task_notify_todo, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %6, label %45

45:                                               ; preds = %42
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @callouts, i32 0, i32 0), align 8
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %3, align 8
  %47 = icmp ne %struct.TYPE_4__* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %2, align 8
  %53 = sub nsw i64 %51, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %1, align 4
  br label %56

55:                                               ; preds = %45
  store i32 0, i32* %1, align 4
  br label %56

56:                                               ; preds = %55, %48
  %57 = load i32, i32* %1, align 4
  ret i32 %57
}

declare dso_local i32 @do_task_notify(...) #1

declare dso_local i64 @clocktime(i32*) #1

declare dso_local i32 @free_callout(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
