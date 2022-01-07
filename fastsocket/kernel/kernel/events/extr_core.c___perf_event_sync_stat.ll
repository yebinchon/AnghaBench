; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c___perf_event_sync_stat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c___perf_event_sync_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.perf_event*)* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, %struct.perf_event*)* @__perf_event_sync_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__perf_event_sync_stat(%struct.perf_event* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  %6 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %7 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %58

12:                                               ; preds = %2
  %13 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %27 [
    i32 129, label %16
    i32 128, label %24
  ]

16:                                               ; preds = %12
  %17 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %18 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %17, i32 0, i32 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** %20, align 8
  %22 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %23 = call i32 %21(%struct.perf_event* %22)
  br label %24

24:                                               ; preds = %12, %16
  %25 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %26 = call i32 @update_event_times(%struct.perf_event* %25)
  br label %28

27:                                               ; preds = %12
  br label %28

28:                                               ; preds = %27, %24
  %29 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %30 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %29, i32 0, i32 3
  %31 = call i32 @local64_read(i32* %30)
  store i32 %31, i32* %5, align 4
  %32 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %33 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %32, i32 0, i32 3
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @local64_xchg(i32* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %37 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %36, i32 0, i32 3
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @local64_set(i32* %37, i32 %38)
  %40 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %41 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %44 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @swap(i32 %42, i32 %45)
  %47 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %48 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %51 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @swap(i32 %49, i32 %52)
  %54 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %55 = call i32 @perf_event_update_userpage(%struct.perf_event* %54)
  %56 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %57 = call i32 @perf_event_update_userpage(%struct.perf_event* %56)
  br label %58

58:                                               ; preds = %28, %11
  ret void
}

declare dso_local i32 @update_event_times(%struct.perf_event*) #1

declare dso_local i32 @local64_read(i32*) #1

declare dso_local i32 @local64_xchg(i32*, i32) #1

declare dso_local i32 @local64_set(i32*, i32) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
