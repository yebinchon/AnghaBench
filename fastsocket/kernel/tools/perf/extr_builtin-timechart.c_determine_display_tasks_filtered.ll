; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-timechart.c_determine_display_tasks_filtered.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-timechart.c_determine_display_tasks_filtered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.per_pid = type { i32, i32, i64, %struct.per_pid*, %struct.per_pidcomm* }
%struct.per_pidcomm = type { i32, i32, i64, %struct.per_pidcomm* }

@all_data = common dso_local global %struct.per_pid* null, align 8
@first_time = common dso_local global i8* null, align 8
@last_time = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @determine_display_tasks_filtered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @determine_display_tasks_filtered() #0 {
  %1 = alloca %struct.per_pid*, align 8
  %2 = alloca %struct.per_pidcomm*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = load %struct.per_pid*, %struct.per_pid** @all_data, align 8
  store %struct.per_pid* %4, %struct.per_pid** %1, align 8
  br label %5

5:                                                ; preds = %75, %0
  %6 = load %struct.per_pid*, %struct.per_pid** %1, align 8
  %7 = icmp ne %struct.per_pid* %6, null
  br i1 %7, label %8, label %79

8:                                                ; preds = %5
  %9 = load %struct.per_pid*, %struct.per_pid** %1, align 8
  %10 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.per_pid*, %struct.per_pid** %1, align 8
  %12 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = load i8*, i8** @first_time, align 8
  %17 = ptrtoint i8* %16 to i32
  %18 = load %struct.per_pid*, %struct.per_pid** %1, align 8
  %19 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  br label %20

20:                                               ; preds = %15, %8
  %21 = load %struct.per_pid*, %struct.per_pid** %1, align 8
  %22 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i8*, i8** @last_time, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = load %struct.per_pid*, %struct.per_pid** %1, align 8
  %29 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %28, i32 0, i32 2
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.per_pid*, %struct.per_pid** %1, align 8
  %32 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %31, i32 0, i32 4
  %33 = load %struct.per_pidcomm*, %struct.per_pidcomm** %32, align 8
  store %struct.per_pidcomm* %33, %struct.per_pidcomm** %2, align 8
  br label %34

34:                                               ; preds = %71, %30
  %35 = load %struct.per_pidcomm*, %struct.per_pidcomm** %2, align 8
  %36 = icmp ne %struct.per_pidcomm* %35, null
  br i1 %36, label %37, label %75

37:                                               ; preds = %34
  %38 = load %struct.per_pidcomm*, %struct.per_pidcomm** %2, align 8
  %39 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load %struct.per_pidcomm*, %struct.per_pidcomm** %2, align 8
  %41 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load i8*, i8** @first_time, align 8
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.per_pidcomm*, %struct.per_pidcomm** %2, align 8
  %48 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %44, %37
  %50 = load %struct.per_pid*, %struct.per_pid** %1, align 8
  %51 = load %struct.per_pidcomm*, %struct.per_pidcomm** %2, align 8
  %52 = call i64 @passes_filter(%struct.per_pid* %50, %struct.per_pidcomm* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.per_pidcomm*, %struct.per_pidcomm** %2, align 8
  %56 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load %struct.per_pid*, %struct.per_pid** %1, align 8
  %58 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %54, %49
  %62 = load %struct.per_pidcomm*, %struct.per_pidcomm** %2, align 8
  %63 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i8*, i8** @last_time, align 8
  %68 = ptrtoint i8* %67 to i64
  %69 = load %struct.per_pidcomm*, %struct.per_pidcomm** %2, align 8
  %70 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %69, i32 0, i32 2
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %66, %61
  %72 = load %struct.per_pidcomm*, %struct.per_pidcomm** %2, align 8
  %73 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %72, i32 0, i32 3
  %74 = load %struct.per_pidcomm*, %struct.per_pidcomm** %73, align 8
  store %struct.per_pidcomm* %74, %struct.per_pidcomm** %2, align 8
  br label %34

75:                                               ; preds = %34
  %76 = load %struct.per_pid*, %struct.per_pid** %1, align 8
  %77 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %76, i32 0, i32 3
  %78 = load %struct.per_pid*, %struct.per_pid** %77, align 8
  store %struct.per_pid* %78, %struct.per_pid** %1, align 8
  br label %5

79:                                               ; preds = %5
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @passes_filter(%struct.per_pid*, %struct.per_pidcomm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
