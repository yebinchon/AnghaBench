; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_unwind.c_unwind__get_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_unwind.c_unwind__get_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32 }
%struct.thread = type { i32 }
%struct.perf_sample = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.unwind_info = type { %struct.machine*, %struct.thread*, i32, %struct.perf_sample* }

@EINVAL = common dso_local global i32 0, align 4
@PERF_REG_IP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unwind__get_entries(i32 %0, i8* %1, %struct.machine* %2, %struct.thread* %3, i32 %4, %struct.perf_sample* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.machine*, align 8
  %11 = alloca %struct.thread*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.perf_sample*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.unwind_info, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store %struct.machine* %2, %struct.machine** %10, align 8
  store %struct.thread* %3, %struct.thread** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.perf_sample* %5, %struct.perf_sample** %13, align 8
  %17 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %15, i32 0, i32 0
  %18 = load %struct.machine*, %struct.machine** %10, align 8
  store %struct.machine* %18, %struct.machine** %17, align 8
  %19 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %15, i32 0, i32 1
  %20 = load %struct.thread*, %struct.thread** %11, align 8
  store %struct.thread* %20, %struct.thread** %19, align 8
  %21 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %15, i32 0, i32 2
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %15, i32 0, i32 3
  %24 = load %struct.perf_sample*, %struct.perf_sample** %13, align 8
  store %struct.perf_sample* %24, %struct.perf_sample** %23, align 8
  %25 = load %struct.perf_sample*, %struct.perf_sample** %13, align 8
  %26 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %6
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %59

33:                                               ; preds = %6
  %34 = load %struct.perf_sample*, %struct.perf_sample** %13, align 8
  %35 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %34, i32 0, i32 0
  %36 = load i32, i32* @PERF_REG_IP, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @reg_value(i32* %14, %struct.TYPE_2__* %35, i32 %36, i32 %37)
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %16, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %16, align 4
  store i32 %42, i32* %7, align 4
  br label %59

43:                                               ; preds = %33
  %44 = load i32, i32* %14, align 4
  %45 = load %struct.thread*, %struct.thread** %11, align 8
  %46 = load %struct.machine*, %struct.machine** %10, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @entry(i32 %44, %struct.thread* %45, %struct.machine* %46, i32 %47, i8* %48)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  br label %59

55:                                               ; preds = %43
  %56 = load i32, i32* %8, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @get_entries(%struct.unwind_info* %15, i32 %56, i8* %57)
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %55, %52, %41, %30
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @reg_value(i32*, %struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @entry(i32, %struct.thread*, %struct.machine*, i32, i8*) #1

declare dso_local i32 @get_entries(%struct.unwind_info*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
