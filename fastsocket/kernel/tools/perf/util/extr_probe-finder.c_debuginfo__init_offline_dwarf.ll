; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_debuginfo__init_offline_dwarf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_debuginfo__init_offline_dwarf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debuginfo = type { i64, i32, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@offline_callbacks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.debuginfo*, i8*)* @debuginfo__init_offline_dwarf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debuginfo__init_offline_dwarf(%struct.debuginfo* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.debuginfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.debuginfo* %0, %struct.debuginfo** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* @O_RDONLY, align 4
  %10 = call i32 @open(i8* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %64

15:                                               ; preds = %2
  %16 = call i64 @dwfl_begin(i32* @offline_callbacks)
  %17 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %18 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %20 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  br label %46

24:                                               ; preds = %15
  %25 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %26 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32* @dwfl_report_offline(i64 %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  br label %46

33:                                               ; preds = %24
  %34 = load i32*, i32** %6, align 8
  %35 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %36 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %35, i32 0, i32 2
  %37 = call i32 @dwfl_module_getdwarf(i32* %34, i32* %36)
  %38 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %39 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %41 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %33
  br label %46

45:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %64

46:                                               ; preds = %44, %32, %23
  %47 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %48 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %53 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @dwfl_end(i64 %54)
  br label %59

56:                                               ; preds = %46
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @close(i32 %57)
  br label %59

59:                                               ; preds = %56, %51
  %60 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %61 = call i32 @memset(%struct.debuginfo* %60, i32 0, i32 16)
  %62 = load i32, i32* @ENOENT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %59, %45, %13
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @dwfl_begin(i32*) #1

declare dso_local i32* @dwfl_report_offline(i64, i8*, i8*, i32) #1

declare dso_local i32 @dwfl_module_getdwarf(i32*, i32*) #1

declare dso_local i32 @dwfl_end(i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @memset(%struct.debuginfo*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
