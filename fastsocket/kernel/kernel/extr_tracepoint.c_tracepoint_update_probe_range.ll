; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_tracepoint.c_tracepoint_update_probe_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_tracepoint.c_tracepoint_update_probe_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracepoint = type { i32 }
%struct.tracepoint_entry = type { i32 }

@tracepoints_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tracepoint_update_probe_range(%struct.tracepoint* %0, %struct.tracepoint* %1) #0 {
  %3 = alloca %struct.tracepoint*, align 8
  %4 = alloca %struct.tracepoint*, align 8
  %5 = alloca %struct.tracepoint*, align 8
  %6 = alloca %struct.tracepoint_entry*, align 8
  store %struct.tracepoint* %0, %struct.tracepoint** %3, align 8
  store %struct.tracepoint* %1, %struct.tracepoint** %4, align 8
  %7 = load %struct.tracepoint*, %struct.tracepoint** %3, align 8
  %8 = icmp ne %struct.tracepoint* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %43

10:                                               ; preds = %2
  %11 = call i32 @mutex_lock(i32* @tracepoints_mutex)
  %12 = load %struct.tracepoint*, %struct.tracepoint** %3, align 8
  store %struct.tracepoint* %12, %struct.tracepoint** %5, align 8
  br label %13

13:                                               ; preds = %38, %10
  %14 = load %struct.tracepoint*, %struct.tracepoint** %5, align 8
  %15 = load %struct.tracepoint*, %struct.tracepoint** %4, align 8
  %16 = icmp ult %struct.tracepoint* %14, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %13
  %18 = load %struct.tracepoint*, %struct.tracepoint** %5, align 8
  %19 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.tracepoint_entry* @get_tracepoint(i32 %20)
  store %struct.tracepoint_entry* %21, %struct.tracepoint_entry** %6, align 8
  %22 = load %struct.tracepoint_entry*, %struct.tracepoint_entry** %6, align 8
  %23 = icmp ne %struct.tracepoint_entry* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load %struct.tracepoint*, %struct.tracepoint** %5, align 8
  %26 = load %struct.tracepoint_entry*, %struct.tracepoint_entry** %6, align 8
  %27 = getelementptr inbounds %struct.tracepoint_entry, %struct.tracepoint_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @set_tracepoint(%struct.tracepoint_entry** %6, %struct.tracepoint* %25, i32 %32)
  br label %37

34:                                               ; preds = %17
  %35 = load %struct.tracepoint*, %struct.tracepoint** %5, align 8
  %36 = call i32 @disable_tracepoint(%struct.tracepoint* %35)
  br label %37

37:                                               ; preds = %34, %24
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.tracepoint*, %struct.tracepoint** %5, align 8
  %40 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %39, i32 1
  store %struct.tracepoint* %40, %struct.tracepoint** %5, align 8
  br label %13

41:                                               ; preds = %13
  %42 = call i32 @mutex_unlock(i32* @tracepoints_mutex)
  br label %43

43:                                               ; preds = %41, %9
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.tracepoint_entry* @get_tracepoint(i32) #1

declare dso_local i32 @set_tracepoint(%struct.tracepoint_entry**, %struct.tracepoint*, i32) #1

declare dso_local i32 @disable_tracepoint(%struct.tracepoint*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
