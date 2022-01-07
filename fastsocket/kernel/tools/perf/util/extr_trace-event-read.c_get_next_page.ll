; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-read.c_get_next_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-read.c_get_next_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32* }

@cpu_data = common dso_local global %struct.TYPE_2__* null, align 8
@read_page = common dso_local global i64 0, align 8
@page_size = common dso_local global i64 0, align 8
@input_fd = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"failed to lseek\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"failed to read page\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to mmap cpu %d at offset 0x%llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @get_next_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_next_page(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %135

13:                                               ; preds = %1
  %14 = load i64, i64* @read_page, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %76

16:                                               ; preds = %13
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @page_size, align 8
  %24 = icmp sle i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %16
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @free(i32* %31)
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32* null, i32** %37, align 8
  br label %135

38:                                               ; preds = %16
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @update_cpu_data_index(i32 %39)
  %41 = load i32, i32* @input_fd, align 4
  %42 = load i32, i32* @SEEK_CUR, align 4
  %43 = call i64 @lseek(i32 %41, i64 0, i32 %42)
  store i64 %43, i64* %3, align 8
  %44 = load i32, i32* @input_fd, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %46 = load i32, i32* %2, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @SEEK_SET, align 4
  %52 = call i64 @lseek(i32 %44, i64 %50, i32 %51)
  store i64 %52, i64* %4, align 8
  %53 = load i64, i64* %4, align 8
  %54 = icmp eq i64 %53, -1
  br i1 %54, label %55, label %57

55:                                               ; preds = %38
  %56 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %38
  %58 = load i32, i32* @input_fd, align 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @page_size, align 8
  %66 = call i64 @read(i32 %58, i32* %64, i64 %65)
  store i64 %66, i64* %4, align 8
  %67 = load i64, i64* %4, align 8
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %57
  %70 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %57
  %72 = load i32, i32* @input_fd, align 4
  %73 = load i64, i64* %3, align 8
  %74 = load i32, i32* @SEEK_SET, align 4
  %75 = call i64 @lseek(i32 %72, i64 %73, i32 %74)
  br label %135

76:                                               ; preds = %13
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %78 = load i32, i32* %2, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @page_size, align 8
  %84 = call i32 @munmap(i32* %82, i64 %83)
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %86 = load i32, i32* %2, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  store i32* null, i32** %89, align 8
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %91 = load i32, i32* %2, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @page_size, align 8
  %97 = icmp sle i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %76
  br label %135

99:                                               ; preds = %76
  %100 = load i32, i32* %2, align 4
  %101 = call i32 @update_cpu_data_index(i32 %100)
  %102 = load i64, i64* @page_size, align 8
  %103 = load i32, i32* @PROT_READ, align 4
  %104 = load i32, i32* @MAP_PRIVATE, align 4
  %105 = load i32, i32* @input_fd, align 4
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %107 = load i32, i32* %2, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = call i32* @mmap(i32* null, i64 %102, i32 %103, i32 %104, i32 %105, i64 %111)
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %114 = load i32, i32* %2, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  store i32* %112, i32** %117, align 8
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %119 = load i32, i32* %2, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load i32*, i32** @MAP_FAILED, align 8
  %125 = icmp eq i32* %123, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %99
  %127 = load i32, i32* %2, align 4
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %129 = load i32, i32* %2, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %127, i64 %133)
  br label %135

135:                                              ; preds = %12, %25, %71, %98, %126, %99
  ret void
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @update_cpu_data_index(i32) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i64 @read(i32, i32*, i64) #1

declare dso_local i32 @munmap(i32*, i64) #1

declare dso_local i32* @mmap(i32*, i64, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
