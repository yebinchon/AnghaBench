; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-timechart.c_sort_pids.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-timechart.c_sort_pids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.per_pid = type { i64, i64, %struct.per_pid* }

@all_data = common dso_local global %struct.per_pid* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sort_pids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort_pids() #0 {
  %1 = alloca %struct.per_pid*, align 8
  %2 = alloca %struct.per_pid*, align 8
  %3 = alloca %struct.per_pid*, align 8
  %4 = alloca %struct.per_pid*, align 8
  store %struct.per_pid* null, %struct.per_pid** %1, align 8
  br label %5

5:                                                ; preds = %79, %17, %0
  %6 = load %struct.per_pid*, %struct.per_pid** @all_data, align 8
  %7 = icmp ne %struct.per_pid* %6, null
  br i1 %7, label %8, label %80

8:                                                ; preds = %5
  %9 = load %struct.per_pid*, %struct.per_pid** @all_data, align 8
  store %struct.per_pid* %9, %struct.per_pid** %2, align 8
  %10 = load %struct.per_pid*, %struct.per_pid** %2, align 8
  %11 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %10, i32 0, i32 2
  %12 = load %struct.per_pid*, %struct.per_pid** %11, align 8
  store %struct.per_pid* %12, %struct.per_pid** @all_data, align 8
  %13 = load %struct.per_pid*, %struct.per_pid** %2, align 8
  %14 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %13, i32 0, i32 2
  store %struct.per_pid* null, %struct.per_pid** %14, align 8
  %15 = load %struct.per_pid*, %struct.per_pid** %1, align 8
  %16 = icmp eq %struct.per_pid* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %8
  %18 = load %struct.per_pid*, %struct.per_pid** %2, align 8
  store %struct.per_pid* %18, %struct.per_pid** %1, align 8
  %19 = load %struct.per_pid*, %struct.per_pid** %2, align 8
  %20 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %19, i32 0, i32 2
  store %struct.per_pid* null, %struct.per_pid** %20, align 8
  br label %5

21:                                               ; preds = %8
  store %struct.per_pid* null, %struct.per_pid** %4, align 8
  %22 = load %struct.per_pid*, %struct.per_pid** %1, align 8
  store %struct.per_pid* %22, %struct.per_pid** %3, align 8
  br label %23

23:                                               ; preds = %78, %62, %53, %21
  %24 = load %struct.per_pid*, %struct.per_pid** %3, align 8
  %25 = icmp ne %struct.per_pid* %24, null
  br i1 %25, label %26, label %79

26:                                               ; preds = %23
  %27 = load %struct.per_pid*, %struct.per_pid** %3, align 8
  %28 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.per_pid*, %struct.per_pid** %2, align 8
  %31 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %50, label %34

34:                                               ; preds = %26
  %35 = load %struct.per_pid*, %struct.per_pid** %3, align 8
  %36 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.per_pid*, %struct.per_pid** %2, align 8
  %39 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %67

42:                                               ; preds = %34
  %43 = load %struct.per_pid*, %struct.per_pid** %3, align 8
  %44 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.per_pid*, %struct.per_pid** %2, align 8
  %47 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %42, %26
  %51 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %52 = icmp ne %struct.per_pid* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %55 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %54, i32 0, i32 2
  %56 = load %struct.per_pid*, %struct.per_pid** %55, align 8
  %57 = load %struct.per_pid*, %struct.per_pid** %2, align 8
  %58 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %57, i32 0, i32 2
  store %struct.per_pid* %56, %struct.per_pid** %58, align 8
  %59 = load %struct.per_pid*, %struct.per_pid** %2, align 8
  %60 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %61 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %60, i32 0, i32 2
  store %struct.per_pid* %59, %struct.per_pid** %61, align 8
  store %struct.per_pid* null, %struct.per_pid** %3, align 8
  br label %23

62:                                               ; preds = %50
  %63 = load %struct.per_pid*, %struct.per_pid** %1, align 8
  %64 = load %struct.per_pid*, %struct.per_pid** %2, align 8
  %65 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %64, i32 0, i32 2
  store %struct.per_pid* %63, %struct.per_pid** %65, align 8
  %66 = load %struct.per_pid*, %struct.per_pid** %2, align 8
  store %struct.per_pid* %66, %struct.per_pid** %1, align 8
  store %struct.per_pid* null, %struct.per_pid** %3, align 8
  br label %23

67:                                               ; preds = %42, %34
  %68 = load %struct.per_pid*, %struct.per_pid** %3, align 8
  store %struct.per_pid* %68, %struct.per_pid** %4, align 8
  %69 = load %struct.per_pid*, %struct.per_pid** %3, align 8
  %70 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %69, i32 0, i32 2
  %71 = load %struct.per_pid*, %struct.per_pid** %70, align 8
  store %struct.per_pid* %71, %struct.per_pid** %3, align 8
  %72 = load %struct.per_pid*, %struct.per_pid** %3, align 8
  %73 = icmp ne %struct.per_pid* %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %67
  %75 = load %struct.per_pid*, %struct.per_pid** %2, align 8
  %76 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %77 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %76, i32 0, i32 2
  store %struct.per_pid* %75, %struct.per_pid** %77, align 8
  br label %78

78:                                               ; preds = %74, %67
  br label %23

79:                                               ; preds = %23
  br label %5

80:                                               ; preds = %5
  %81 = load %struct.per_pid*, %struct.per_pid** %1, align 8
  store %struct.per_pid* %81, %struct.per_pid** @all_data, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
