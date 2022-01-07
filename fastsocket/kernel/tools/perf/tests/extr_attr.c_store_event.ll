; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/tests/extr_attr.c_store_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/tests/extr_attr.c_store_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_attr = type { i32, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s/event-%d-%llu-%d\00", align 1
@dir = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"test attr - failed to open event file\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"[event-%d-%llu-%d]\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"test attr - failed to write event file\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"lu\00", align 1
@type = common dso_local global i32 0, align 4
@PRIu32 = common dso_local global i8* null, align 8
@size = common dso_local global i32 0, align 4
@config = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"llu\00", align 1
@sample_period = common dso_local global i32 0, align 4
@sample_type = common dso_local global i32 0, align 4
@read_format = common dso_local global i32 0, align 4
@disabled = common dso_local global i32 0, align 4
@inherit = common dso_local global i32 0, align 4
@pinned = common dso_local global i32 0, align 4
@exclusive = common dso_local global i32 0, align 4
@exclude_user = common dso_local global i32 0, align 4
@exclude_kernel = common dso_local global i32 0, align 4
@exclude_hv = common dso_local global i32 0, align 4
@exclude_idle = common dso_local global i32 0, align 4
@mmap = common dso_local global i32 0, align 4
@comm = common dso_local global i32 0, align 4
@freq = common dso_local global i32 0, align 4
@inherit_stat = common dso_local global i32 0, align 4
@enable_on_exec = common dso_local global i32 0, align 4
@task = common dso_local global i32 0, align 4
@watermark = common dso_local global i32 0, align 4
@precise_ip = common dso_local global i32 0, align 4
@mmap_data = common dso_local global i32 0, align 4
@sample_id_all = common dso_local global i32 0, align 4
@exclude_host = common dso_local global i32 0, align 4
@exclude_guest = common dso_local global i32 0, align 4
@wakeup_events = common dso_local global i32 0, align 4
@bp_type = common dso_local global i32 0, align 4
@config1 = common dso_local global i32 0, align 4
@config2 = common dso_local global i32 0, align 4
@branch_sample_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event_attr*, i64, i32, i32, i32, i64)* @store_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_event(%struct.perf_event_attr* %0, i64 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.perf_event_attr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.perf_event_attr* %0, %struct.perf_event_attr** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %18 = load i32, i32* @PATH_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %15, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %16, align 8
  %22 = load i32, i32* @PATH_MAX, align 4
  %23 = load i8*, i8** @dir, align 8
  %24 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %25 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %28 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @snprintf(i8* %21, i32 %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %26, i32 %29, i32 %30)
  %32 = call i32* @fopen(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %32, i32** %14, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %6
  %36 = call i32 @perror(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %142

37:                                               ; preds = %6
  %38 = load i32*, i32** %14, align 8
  %39 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %40 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %43 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i64 @fprintf(i32* %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %41, i32 %44, i32 %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = call i32 @perror(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %50 = load i32*, i32** %14, align 8
  %51 = call i32 @fclose(i32* %50)
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %142

52:                                               ; preds = %37
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = call i32 @__WRITE_ASS(i64 %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 %56)
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = call i32 @__WRITE_ASS(i64 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 %61)
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = call i32 @__WRITE_ASS(i64 %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 %66)
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @__WRITE_ASS(i64 %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 %69)
  %71 = load i64, i64* %13, align 8
  %72 = load i64, i64* %13, align 8
  %73 = call i32 @__WRITE_ASS(i64 %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i64 %72)
  %74 = load i32, i32* @type, align 4
  %75 = load i8*, i8** @PRIu32, align 8
  %76 = call i32 @WRITE_ASS(i32 %74, i8* %75)
  %77 = load i32, i32* @size, align 4
  %78 = load i8*, i8** @PRIu32, align 8
  %79 = call i32 @WRITE_ASS(i32 %77, i8* %78)
  %80 = load i32, i32* @config, align 4
  %81 = call i32 @WRITE_ASS(i32 %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %82 = load i32, i32* @sample_period, align 4
  %83 = call i32 @WRITE_ASS(i32 %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %84 = load i32, i32* @sample_type, align 4
  %85 = call i32 @WRITE_ASS(i32 %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %86 = load i32, i32* @read_format, align 4
  %87 = call i32 @WRITE_ASS(i32 %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %88 = load i32, i32* @disabled, align 4
  %89 = call i32 @WRITE_ASS(i32 %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %90 = load i32, i32* @inherit, align 4
  %91 = call i32 @WRITE_ASS(i32 %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %92 = load i32, i32* @pinned, align 4
  %93 = call i32 @WRITE_ASS(i32 %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %94 = load i32, i32* @exclusive, align 4
  %95 = call i32 @WRITE_ASS(i32 %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %96 = load i32, i32* @exclude_user, align 4
  %97 = call i32 @WRITE_ASS(i32 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %98 = load i32, i32* @exclude_kernel, align 4
  %99 = call i32 @WRITE_ASS(i32 %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %100 = load i32, i32* @exclude_hv, align 4
  %101 = call i32 @WRITE_ASS(i32 %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %102 = load i32, i32* @exclude_idle, align 4
  %103 = call i32 @WRITE_ASS(i32 %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %104 = load i32, i32* @mmap, align 4
  %105 = call i32 @WRITE_ASS(i32 %104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %106 = load i32, i32* @comm, align 4
  %107 = call i32 @WRITE_ASS(i32 %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %108 = load i32, i32* @freq, align 4
  %109 = call i32 @WRITE_ASS(i32 %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %110 = load i32, i32* @inherit_stat, align 4
  %111 = call i32 @WRITE_ASS(i32 %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %112 = load i32, i32* @enable_on_exec, align 4
  %113 = call i32 @WRITE_ASS(i32 %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %114 = load i32, i32* @task, align 4
  %115 = call i32 @WRITE_ASS(i32 %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %116 = load i32, i32* @watermark, align 4
  %117 = call i32 @WRITE_ASS(i32 %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %118 = load i32, i32* @precise_ip, align 4
  %119 = call i32 @WRITE_ASS(i32 %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %120 = load i32, i32* @mmap_data, align 4
  %121 = call i32 @WRITE_ASS(i32 %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %122 = load i32, i32* @sample_id_all, align 4
  %123 = call i32 @WRITE_ASS(i32 %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %124 = load i32, i32* @exclude_host, align 4
  %125 = call i32 @WRITE_ASS(i32 %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %126 = load i32, i32* @exclude_guest, align 4
  %127 = call i32 @WRITE_ASS(i32 %126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %128 = load i32, i32* @wakeup_events, align 4
  %129 = load i8*, i8** @PRIu32, align 8
  %130 = call i32 @WRITE_ASS(i32 %128, i8* %129)
  %131 = load i32, i32* @bp_type, align 4
  %132 = load i8*, i8** @PRIu32, align 8
  %133 = call i32 @WRITE_ASS(i32 %131, i8* %132)
  %134 = load i32, i32* @config1, align 4
  %135 = call i32 @WRITE_ASS(i32 %134, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %136 = load i32, i32* @config2, align 4
  %137 = call i32 @WRITE_ASS(i32 %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %138 = load i32, i32* @branch_sample_type, align 4
  %139 = call i32 @WRITE_ASS(i32 %138, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %140 = load i32*, i32** %14, align 8
  %141 = call i32 @fclose(i32* %140)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %142

142:                                              ; preds = %52, %48, %35
  %143 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %143)
  %144 = load i32, i32* %7, align 4
  ret i32 %144
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i32, i32) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i64 @fprintf(i32*, i8*, i32, i32, i32) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @__WRITE_ASS(i64, i8*, i64) #2

declare dso_local i32 @WRITE_ASS(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
