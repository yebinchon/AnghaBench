; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_list_add_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_list_add_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.TYPE_2__, i32, i32, i32, %struct.perf_event* }
%struct.TYPE_2__ = type { i64 }
%struct.perf_event_context = type { i32, i32, i32, i32, i32 }
%struct.list_head = type { i32 }

@PERF_ATTACH_CONTEXT = common dso_local global i32 0, align 4
@PERF_GROUP_SOFTWARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, %struct.perf_event_context*)* @list_add_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_add_event(%struct.perf_event* %0, %struct.perf_event_context* %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.perf_event_context*, align 8
  %5 = alloca %struct.list_head*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store %struct.perf_event_context* %1, %struct.perf_event_context** %4, align 8
  %6 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %7 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @PERF_ATTACH_CONTEXT, align 4
  %10 = and i32 %8, %9
  %11 = call i32 @WARN_ON_ONCE(i32 %10)
  %12 = load i32, i32* @PERF_ATTACH_CONTEXT, align 4
  %13 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %18 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %17, i32 0, i32 5
  %19 = load %struct.perf_event*, %struct.perf_event** %18, align 8
  %20 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %21 = icmp eq %struct.perf_event* %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %2
  %23 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %24 = call i64 @is_software_event(%struct.perf_event* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* @PERF_GROUP_SOFTWARE, align 4
  %28 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %29 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %26, %22
  %33 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %34 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %35 = call %struct.list_head* @ctx_group_list(%struct.perf_event* %33, %struct.perf_event_context* %34)
  store %struct.list_head* %35, %struct.list_head** %5, align 8
  %36 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %37 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %36, i32 0, i32 3
  %38 = load %struct.list_head*, %struct.list_head** %5, align 8
  %39 = call i32 @list_add_tail(i32* %37, %struct.list_head* %38)
  br label %40

40:                                               ; preds = %32, %2
  %41 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %42 = call i64 @is_cgroup_event(%struct.perf_event* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %46 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %44, %40
  %50 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %51 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %50, i32 0, i32 2
  %52 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %53 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %52, i32 0, i32 3
  %54 = call i32 @list_add_rcu(i32* %51, i32* %53)
  %55 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %56 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %49
  %60 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %61 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @perf_pmu_rotate_start(i32 %62)
  br label %64

64:                                               ; preds = %59, %49
  %65 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %66 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %70 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %64
  %75 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %76 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %74, %64
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @is_software_event(%struct.perf_event*) #1

declare dso_local %struct.list_head* @ctx_group_list(%struct.perf_event*, %struct.perf_event_context*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i64 @is_cgroup_event(%struct.perf_event*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @perf_pmu_rotate_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
