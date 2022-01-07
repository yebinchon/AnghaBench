; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_pmu.c_perf_pmu__new_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_pmu.c_perf_pmu__new_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.perf_pmu__format = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_pmu__new_format(%struct.list_head* %0, i8* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.perf_pmu__format*, align 8
  store %struct.list_head* %0, %struct.list_head** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = call %struct.perf_pmu__format* @zalloc(i32 16)
  store %struct.perf_pmu__format* %11, %struct.perf_pmu__format** %10, align 8
  %12 = load %struct.perf_pmu__format*, %struct.perf_pmu__format** %10, align 8
  %13 = icmp ne %struct.perf_pmu__format* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %34

17:                                               ; preds = %4
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @strdup(i8* %18)
  %20 = load %struct.perf_pmu__format*, %struct.perf_pmu__format** %10, align 8
  %21 = getelementptr inbounds %struct.perf_pmu__format, %struct.perf_pmu__format* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.perf_pmu__format*, %struct.perf_pmu__format** %10, align 8
  %24 = getelementptr inbounds %struct.perf_pmu__format, %struct.perf_pmu__format* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.perf_pmu__format*, %struct.perf_pmu__format** %10, align 8
  %26 = getelementptr inbounds %struct.perf_pmu__format, %struct.perf_pmu__format* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i64*, i64** %9, align 8
  %29 = call i32 @memcpy(i32 %27, i64* %28, i32 4)
  %30 = load %struct.perf_pmu__format*, %struct.perf_pmu__format** %10, align 8
  %31 = getelementptr inbounds %struct.perf_pmu__format, %struct.perf_pmu__format* %30, i32 0, i32 1
  %32 = load %struct.list_head*, %struct.list_head** %6, align 8
  %33 = call i32 @list_add_tail(i32* %31, %struct.list_head* %32)
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %17, %14
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local %struct.perf_pmu__format* @zalloc(i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
