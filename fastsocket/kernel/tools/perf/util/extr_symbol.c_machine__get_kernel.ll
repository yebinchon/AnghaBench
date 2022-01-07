; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_machine__get_kernel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_machine__get_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }
%struct.dso = type { i32 }
%struct.machine = type { i32 }

@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [18 x i8] c"[kernel.kallsyms]\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"[kernel]\00", align 1
@DSO_TYPE_KERNEL = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"[guest.kernel]\00", align 1
@DSO_TYPE_GUEST_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dso* (%struct.machine*)* @machine__get_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dso* @machine__get_kernel(%struct.machine* %0) #0 {
  %2 = alloca %struct.machine*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dso*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.machine* %0, %struct.machine** %2, align 8
  store i8* null, i8** %3, align 8
  %7 = load %struct.machine*, %struct.machine** %2, align 8
  %8 = call i64 @machine__is_host(%struct.machine* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  store i8* %11, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %15

15:                                               ; preds = %14, %10
  %16 = load %struct.machine*, %struct.machine** %2, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* @DSO_TYPE_KERNEL, align 4
  %19 = call %struct.dso* @dso__kernel_findnew(%struct.machine* %16, i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  store %struct.dso* %19, %struct.dso** %4, align 8
  br label %43

20:                                               ; preds = %1
  %21 = load i32, i32* @PATH_MAX, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %5, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %6, align 8
  %25 = load %struct.machine*, %struct.machine** %2, align 8
  %26 = call i64 @machine__is_default_guest(%struct.machine* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 1), align 8
  store i8* %29, i8** %3, align 8
  br label %30

30:                                               ; preds = %28, %20
  %31 = load i8*, i8** %3, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load %struct.machine*, %struct.machine** %2, align 8
  %35 = trunc i64 %22 to i32
  %36 = call i8* @machine__mmap_name(%struct.machine* %34, i8* %24, i32 %35)
  store i8* %36, i8** %3, align 8
  br label %37

37:                                               ; preds = %33, %30
  %38 = load %struct.machine*, %struct.machine** %2, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = load i32, i32* @DSO_TYPE_GUEST_KERNEL, align 4
  %41 = call %struct.dso* @dso__kernel_findnew(%struct.machine* %38, i8* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  store %struct.dso* %41, %struct.dso** %4, align 8
  %42 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %42)
  br label %43

43:                                               ; preds = %37, %15
  %44 = load %struct.dso*, %struct.dso** %4, align 8
  %45 = icmp ne %struct.dso* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load %struct.dso*, %struct.dso** %4, align 8
  %48 = getelementptr inbounds %struct.dso, %struct.dso* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load %struct.dso*, %struct.dso** %4, align 8
  %53 = load %struct.machine*, %struct.machine** %2, align 8
  %54 = call i32 @dso__read_running_kernel_build_id(%struct.dso* %52, %struct.machine* %53)
  br label %55

55:                                               ; preds = %51, %46, %43
  %56 = load %struct.dso*, %struct.dso** %4, align 8
  ret %struct.dso* %56
}

declare dso_local i64 @machine__is_host(%struct.machine*) #1

declare dso_local %struct.dso* @dso__kernel_findnew(%struct.machine*, i8*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @machine__is_default_guest(%struct.machine*) #1

declare dso_local i8* @machine__mmap_name(%struct.machine*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @dso__read_running_kernel_build_id(%struct.dso*, %struct.machine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
