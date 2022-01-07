; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_machine__get_kernel_start_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_machine__get_kernel_start_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.machine = type { i8* }
%struct.process_args = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"/proc/kallsyms\00", align 1
@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"%s/proc/kallsyms\00", align 1
@symbol__in_kernel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.machine*)* @machine__get_kernel_start_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @machine__get_kernel_start_addr(%struct.machine* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.machine*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.process_args, align 4
  %8 = alloca i32, align 4
  store %struct.machine* %0, %struct.machine** %3, align 8
  %9 = load i32, i32* @PATH_MAX, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load %struct.machine*, %struct.machine** %3, align 8
  %14 = call i64 @machine__is_host(%struct.machine* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %30

17:                                               ; preds = %1
  %18 = load %struct.machine*, %struct.machine** %3, align 8
  %19 = call i64 @machine__is_default_guest(%struct.machine* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %4, align 8
  br label %29

24:                                               ; preds = %17
  %25 = load %struct.machine*, %struct.machine** %3, align 8
  %26 = getelementptr inbounds %struct.machine, %struct.machine* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  store i8* %12, i8** %4, align 8
  br label %29

29:                                               ; preds = %24, %21
  br label %30

30:                                               ; preds = %29, %16
  %31 = load i8*, i8** %4, align 8
  %32 = call i64 @symbol__restricted_filename(i8* %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %44

35:                                               ; preds = %30
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* @symbol__in_kernel, align 4
  %38 = call i64 @kallsyms__parse(i8* %36, %struct.process_args* %7, i32 %37)
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %44

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.process_args, %struct.process_args* %7, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %44

44:                                               ; preds = %41, %40, %34
  %45 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @machine__is_host(%struct.machine*) #2

declare dso_local i64 @machine__is_default_guest(%struct.machine*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i64 @symbol__restricted_filename(i8*, i8*) #2

declare dso_local i64 @kallsyms__parse(i8*, %struct.process_args*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
