; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-record.c_perf_event__synthesize_guest_os.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-record.c_perf_event__synthesize_guest_os.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32 }
%struct.perf_tool = type { i32 }

@process_synthesized_event = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Couldn't record guest kernel [%d]'s reference relocation symbol.\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"_text\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"_stext\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.machine*, i8*)* @perf_event__synthesize_guest_os to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_event__synthesize_guest_os(%struct.machine* %0, i8* %1) #0 {
  %3 = alloca %struct.machine*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_tool*, align 8
  store %struct.machine* %0, %struct.machine** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.perf_tool*
  store %struct.perf_tool* %8, %struct.perf_tool** %6, align 8
  %9 = load %struct.machine*, %struct.machine** %3, align 8
  %10 = call i64 @machine__is_host(%struct.machine* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %45

13:                                               ; preds = %2
  %14 = load %struct.perf_tool*, %struct.perf_tool** %6, align 8
  %15 = load i32, i32* @process_synthesized_event, align 4
  %16 = load %struct.machine*, %struct.machine** %3, align 8
  %17 = call i32 @perf_event__synthesize_modules(%struct.perf_tool* %14, i32 %15, %struct.machine* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load %struct.machine*, %struct.machine** %3, align 8
  %22 = getelementptr inbounds %struct.machine, %struct.machine* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %20, %13
  %26 = load %struct.perf_tool*, %struct.perf_tool** %6, align 8
  %27 = load i32, i32* @process_synthesized_event, align 4
  %28 = load %struct.machine*, %struct.machine** %3, align 8
  %29 = call i32 @perf_event__synthesize_kernel_mmap(%struct.perf_tool* %26, i32 %27, %struct.machine* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.perf_tool*, %struct.perf_tool** %6, align 8
  %34 = load i32, i32* @process_synthesized_event, align 4
  %35 = load %struct.machine*, %struct.machine** %3, align 8
  %36 = call i32 @perf_event__synthesize_kernel_mmap(%struct.perf_tool* %33, i32 %34, %struct.machine* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %32, %25
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.machine*, %struct.machine** %3, align 8
  %42 = getelementptr inbounds %struct.machine, %struct.machine* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %12, %40, %37
  ret void
}

declare dso_local i64 @machine__is_host(%struct.machine*) #1

declare dso_local i32 @perf_event__synthesize_modules(%struct.perf_tool*, i32, %struct.machine*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @perf_event__synthesize_kernel_mmap(%struct.perf_tool*, i32, %struct.machine*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
