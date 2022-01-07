; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_machine.c_machine__mmap_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_machine.c_machine__mmap_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"kernel.kallsyms\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"guest.kernel.kallsyms\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"[%s.%d]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @machine__mmap_name(%struct.machine* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.machine*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.machine* %0, %struct.machine** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.machine*, %struct.machine** %4, align 8
  %8 = call i64 @machine__is_host(%struct.machine* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %11, i64 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %30

14:                                               ; preds = %3
  %15 = load %struct.machine*, %struct.machine** %4, align 8
  %16 = call i64 @machine__is_default_guest(%struct.machine* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %19, i64 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %29

22:                                               ; preds = %14
  %23 = load i8*, i8** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.machine*, %struct.machine** %4, align 8
  %26 = getelementptr inbounds %struct.machine, %struct.machine* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %23, i64 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %22, %18
  br label %30

30:                                               ; preds = %29, %10
  %31 = load i8*, i8** %5, align 8
  ret i8* %31
}

declare dso_local i64 @machine__is_host(%struct.machine*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, ...) #1

declare dso_local i64 @machine__is_default_guest(%struct.machine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
