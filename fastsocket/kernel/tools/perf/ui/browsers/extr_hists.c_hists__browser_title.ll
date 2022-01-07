; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/browsers/extr_hists.c_hists__browser_title.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/browsers/extr_hists.c_hists__browser_title.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hists = type { i8*, %struct.TYPE_2__, %struct.thread*, %struct.dso* }
%struct.TYPE_2__ = type { i64*, i32 }
%struct.thread = type { i8*, i32, i64 }
%struct.dso = type { i32 }

@PERF_RECORD_SAMPLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"Samples: %lu%c of event '%s', Event count (approx.): %lu\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c", UID: %s\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c", Thread: %s(%d)\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [10 x i8] c", DSO: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hists*, i8*, i64, i8*)* @hists__browser_title to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hists__browser_title(%struct.hists* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.hists*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca %struct.dso*, align 8
  %12 = alloca %struct.thread*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.hists* %0, %struct.hists** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load %struct.hists*, %struct.hists** %5, align 8
  %16 = getelementptr inbounds %struct.hists, %struct.hists* %15, i32 0, i32 3
  %17 = load %struct.dso*, %struct.dso** %16, align 8
  store %struct.dso* %17, %struct.dso** %11, align 8
  %18 = load %struct.hists*, %struct.hists** %5, align 8
  %19 = getelementptr inbounds %struct.hists, %struct.hists* %18, i32 0, i32 2
  %20 = load %struct.thread*, %struct.thread** %19, align 8
  store %struct.thread* %20, %struct.thread** %12, align 8
  %21 = load %struct.hists*, %struct.hists** %5, align 8
  %22 = getelementptr inbounds %struct.hists, %struct.hists* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* @PERF_RECORD_SAMPLE, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %13, align 8
  %28 = load %struct.hists*, %struct.hists** %5, align 8
  %29 = getelementptr inbounds %struct.hists, %struct.hists* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %14, align 4
  %32 = load i64, i64* %13, align 8
  %33 = call i64 @convert_unit(i64 %32, i8* %9)
  store i64 %33, i64* %13, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %13, align 8
  %37 = load i8, i8* %9, align 1
  %38 = sext i8 %37 to i32
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %14, align 4
  %41 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %34, i64 %35, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %36, i32 %38, i8* %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load %struct.hists*, %struct.hists** %5, align 8
  %43 = getelementptr inbounds %struct.hists, %struct.hists* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %63

46:                                               ; preds = %4
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i64, i64* %7, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = sub i64 %51, %53
  %55 = load %struct.hists*, %struct.hists** %5, align 8
  %56 = getelementptr inbounds %struct.hists, %struct.hists* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @snprintf(i8* %50, i64 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %46, %4
  %64 = load %struct.thread*, %struct.thread** %12, align 8
  %65 = icmp ne %struct.thread* %64, null
  br i1 %65, label %66, label %92

66:                                               ; preds = %63
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i64, i64* %7, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = sub i64 %71, %73
  %75 = load %struct.thread*, %struct.thread** %12, align 8
  %76 = getelementptr inbounds %struct.thread, %struct.thread* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %66
  %80 = load %struct.thread*, %struct.thread** %12, align 8
  %81 = getelementptr inbounds %struct.thread, %struct.thread* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  br label %84

83:                                               ; preds = %66
  br label %84

84:                                               ; preds = %83, %79
  %85 = phi i8* [ %82, %79 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %83 ]
  %86 = load %struct.thread*, %struct.thread** %12, align 8
  %87 = getelementptr inbounds %struct.thread, %struct.thread* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %70, i64 %74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %85, i32 %88)
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %84, %63
  %93 = load %struct.dso*, %struct.dso** %11, align 8
  %94 = icmp ne %struct.dso* %93, null
  br i1 %94, label %95, label %110

95:                                               ; preds = %92
  %96 = load i8*, i8** %6, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i64, i64* %7, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = sub i64 %100, %102
  %104 = load %struct.dso*, %struct.dso** %11, align 8
  %105 = getelementptr inbounds %struct.dso, %struct.dso* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %99, i64 %103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %95, %92
  %111 = load i32, i32* %10, align 4
  ret i32 %111
}

declare dso_local i64 @convert_unit(i64, i8*) #1

declare dso_local i32 @scnprintf(i8*, i64, i8*, ...) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
