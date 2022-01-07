; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_event.c_perf_event__synthesize_kernel_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_event.c_perf_event__synthesize_kernel_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.perf_tool = type { i32 }
%union.perf_event = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64, i64, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.machine = type { i32, i8*, i32, %struct.map** }
%struct.map = type { i64, i64 }
%struct.process_symbol_args = type { i8*, i32 }
%struct.TYPE_5__ = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Not enough memory synthesizing mmap event for kernel modules\0A\00", align 1
@PERF_RECORD_MISC_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"/proc/kallsyms\00", align 1
@PERF_RECORD_MISC_GUEST_KERNEL = common dso_local global i32 0, align 4
@symbol_conf = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"%s/proc/kallsyms\00", align 1
@find_symbol_cb = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@MAP__FUNCTION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@PERF_RECORD_MMAP = common dso_local global i32 0, align 4
@synth_sample = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_event__synthesize_kernel_mmap(%struct.perf_tool* %0, i32 (%struct.perf_tool*, %union.perf_event*, i32*, %struct.machine*)* %1, %struct.machine* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_tool*, align 8
  %7 = alloca i32 (%struct.perf_tool*, %union.perf_event*, i32*, %struct.machine*)*, align 8
  %8 = alloca %struct.machine*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.map*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.process_symbol_args, align 8
  %19 = alloca %union.perf_event*, align 8
  %20 = alloca i32, align 4
  store %struct.perf_tool* %0, %struct.perf_tool** %6, align 8
  store i32 (%struct.perf_tool*, %union.perf_event*, i32*, %struct.machine*)* %1, i32 (%struct.perf_tool*, %union.perf_event*, i32*, %struct.machine*)** %7, align 8
  store %struct.machine* %2, %struct.machine** %8, align 8
  store i8* %3, i8** %9, align 8
  %21 = load i32, i32* @PATH_MAX, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %13, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %14, align 8
  %25 = load i32, i32* @PATH_MAX, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %15, align 8
  %28 = getelementptr inbounds %struct.process_symbol_args, %struct.process_symbol_args* %18, i32 0, i32 0
  %29 = load i8*, i8** %9, align 8
  store i8* %29, i8** %28, align 8
  %30 = getelementptr inbounds %struct.process_symbol_args, %struct.process_symbol_args* %18, i32 0, i32 1
  store i32 0, i32* %30, align 8
  %31 = load %struct.machine*, %struct.machine** %8, align 8
  %32 = getelementptr inbounds %struct.machine, %struct.machine* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = add i64 40, %34
  %36 = trunc i64 %35 to i32
  %37 = call %union.perf_event* @zalloc(i32 %36)
  store %union.perf_event* %37, %union.perf_event** %19, align 8
  %38 = load %union.perf_event*, %union.perf_event** %19, align 8
  %39 = icmp eq %union.perf_event* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %4
  %41 = call i32 @pr_debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %151

42:                                               ; preds = %4
  %43 = load %struct.machine*, %struct.machine** %8, align 8
  %44 = trunc i64 %26 to i32
  %45 = call i8* @machine__mmap_name(%struct.machine* %43, i8* %27, i32 %44)
  store i8* %45, i8** %12, align 8
  %46 = load %struct.machine*, %struct.machine** %8, align 8
  %47 = call i64 @machine__is_host(%struct.machine* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load i32, i32* @PERF_RECORD_MISC_KERNEL, align 4
  %51 = load %union.perf_event*, %union.perf_event** %19, align 8
  %52 = bitcast %union.perf_event* %51 to %struct.TYPE_5__*
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %71

54:                                               ; preds = %42
  %55 = load i32, i32* @PERF_RECORD_MISC_GUEST_KERNEL, align 4
  %56 = load %union.perf_event*, %union.perf_event** %19, align 8
  %57 = bitcast %union.perf_event* %56 to %struct.TYPE_5__*
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load %struct.machine*, %struct.machine** %8, align 8
  %60 = call i64 @machine__is_default_guest(%struct.machine* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @symbol_conf, i32 0, i32 0), align 8
  %64 = inttoptr i64 %63 to i8*
  store i8* %64, i8** %11, align 8
  br label %70

65:                                               ; preds = %54
  %66 = load %struct.machine*, %struct.machine** %8, align 8
  %67 = getelementptr inbounds %struct.machine, %struct.machine* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %68)
  store i8* %24, i8** %11, align 8
  br label %70

70:                                               ; preds = %65, %62
  br label %71

71:                                               ; preds = %70, %49
  %72 = load i8*, i8** %11, align 8
  %73 = load i32, i32* @find_symbol_cb, align 4
  %74 = call i64 @kallsyms__parse(i8* %72, %struct.process_symbol_args* %18, i32 %73)
  %75 = icmp sle i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* @ENOENT, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %151

79:                                               ; preds = %71
  %80 = load %struct.machine*, %struct.machine** %8, align 8
  %81 = getelementptr inbounds %struct.machine, %struct.machine* %80, i32 0, i32 3
  %82 = load %struct.map**, %struct.map*** %81, align 8
  %83 = load i64, i64* @MAP__FUNCTION, align 8
  %84 = getelementptr inbounds %struct.map*, %struct.map** %82, i64 %83
  %85 = load %struct.map*, %struct.map** %84, align 8
  store %struct.map* %85, %struct.map** %16, align 8
  %86 = load %union.perf_event*, %union.perf_event** %19, align 8
  %87 = bitcast %union.perf_event* %86 to %struct.TYPE_7__*
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = load i8*, i8** %12, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = call i32 @snprintf(i32 %89, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %90, i8* %91)
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  store i64 %94, i64* %10, align 8
  %95 = load i64, i64* %10, align 8
  %96 = call i64 @PERF_ALIGN(i64 %95, i32 4)
  store i64 %96, i64* %10, align 8
  %97 = load i32, i32* @PERF_RECORD_MMAP, align 4
  %98 = load %union.perf_event*, %union.perf_event** %19, align 8
  %99 = bitcast %union.perf_event* %98 to %struct.TYPE_7__*
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  store i32 %97, i32* %101, align 4
  %102 = load i64, i64* %10, align 8
  %103 = sub i64 4, %102
  %104 = sub i64 40, %103
  %105 = load %struct.machine*, %struct.machine** %8, align 8
  %106 = getelementptr inbounds %struct.machine, %struct.machine* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = add i64 %104, %108
  %110 = trunc i64 %109 to i32
  %111 = load %union.perf_event*, %union.perf_event** %19, align 8
  %112 = bitcast %union.perf_event* %111 to %struct.TYPE_7__*
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  store i32 %110, i32* %114, align 4
  %115 = getelementptr inbounds %struct.process_symbol_args, %struct.process_symbol_args* %18, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %union.perf_event*, %union.perf_event** %19, align 8
  %118 = bitcast %union.perf_event* %117 to %struct.TYPE_7__*
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 3
  store i32 %116, i32* %119, align 8
  %120 = load %struct.map*, %struct.map** %16, align 8
  %121 = getelementptr inbounds %struct.map, %struct.map* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %union.perf_event*, %union.perf_event** %19, align 8
  %124 = bitcast %union.perf_event* %123 to %struct.TYPE_7__*
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  store i64 %122, i64* %125, align 8
  %126 = load %struct.map*, %struct.map** %16, align 8
  %127 = getelementptr inbounds %struct.map, %struct.map* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %union.perf_event*, %union.perf_event** %19, align 8
  %130 = bitcast %union.perf_event* %129 to %struct.TYPE_7__*
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = sub nsw i64 %128, %132
  %134 = load %union.perf_event*, %union.perf_event** %19, align 8
  %135 = bitcast %union.perf_event* %134 to %struct.TYPE_7__*
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 2
  store i64 %133, i64* %136, align 8
  %137 = load %struct.machine*, %struct.machine** %8, align 8
  %138 = getelementptr inbounds %struct.machine, %struct.machine* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load %union.perf_event*, %union.perf_event** %19, align 8
  %141 = bitcast %union.perf_event* %140 to %struct.TYPE_7__*
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  store i32 %139, i32* %142, align 8
  %143 = load i32 (%struct.perf_tool*, %union.perf_event*, i32*, %struct.machine*)*, i32 (%struct.perf_tool*, %union.perf_event*, i32*, %struct.machine*)** %7, align 8
  %144 = load %struct.perf_tool*, %struct.perf_tool** %6, align 8
  %145 = load %union.perf_event*, %union.perf_event** %19, align 8
  %146 = load %struct.machine*, %struct.machine** %8, align 8
  %147 = call i32 %143(%struct.perf_tool* %144, %union.perf_event* %145, i32* @synth_sample, %struct.machine* %146)
  store i32 %147, i32* %17, align 4
  %148 = load %union.perf_event*, %union.perf_event** %19, align 8
  %149 = call i32 @free(%union.perf_event* %148)
  %150 = load i32, i32* %17, align 4
  store i32 %150, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %151

151:                                              ; preds = %79, %76, %40
  %152 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %152)
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %union.perf_event* @zalloc(i32) #2

declare dso_local i32 @pr_debug(i8*) #2

declare dso_local i8* @machine__mmap_name(%struct.machine*, i8*, i32) #2

declare dso_local i64 @machine__is_host(%struct.machine*) #2

declare dso_local i64 @machine__is_default_guest(%struct.machine*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i64 @kallsyms__parse(i8*, %struct.process_symbol_args*, i32) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #2

declare dso_local i64 @PERF_ALIGN(i64, i32) #2

declare dso_local i32 @free(%union.perf_event*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
