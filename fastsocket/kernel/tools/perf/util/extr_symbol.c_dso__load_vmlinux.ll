; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_dso__load_vmlinux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_dso__load_vmlinux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.dso = type { i64 }
%struct.map = type { i32 }
%struct.symsrc = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DSO_TYPE_GUEST_KERNEL = common dso_local global i64 0, align 8
@DSO_BINARY_TYPE__GUEST_VMLINUX = common dso_local global i32 0, align 4
@DSO_BINARY_TYPE__VMLINUX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Using %s for symbols\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dso__load_vmlinux(%struct.dso* %0, %struct.map* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dso*, align 8
  %7 = alloca %struct.map*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.symsrc, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dso* %0, %struct.dso** %6, align 8
  store %struct.map* %1, %struct.map** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %16 = load i32, i32* @PATH_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = trunc i64 %17 to i32
  %21 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @snprintf(i8* %19, i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %22)
  %24 = load %struct.dso*, %struct.dso** %6, align 8
  %25 = getelementptr inbounds %struct.dso, %struct.dso* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DSO_TYPE_GUEST_KERNEL, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* @DSO_BINARY_TYPE__GUEST_VMLINUX, align 4
  store i32 %30, i32* %14, align 4
  br label %33

31:                                               ; preds = %4
  %32 = load i32, i32* @DSO_BINARY_TYPE__VMLINUX, align 4
  store i32 %32, i32* %14, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = load %struct.dso*, %struct.dso** %6, align 8
  %35 = load i32, i32* %14, align 4
  %36 = call i64 @symsrc__init(%struct.symsrc* %11, %struct.dso* %34, i8* %19, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %59

39:                                               ; preds = %33
  %40 = load %struct.dso*, %struct.dso** %6, align 8
  %41 = load %struct.map*, %struct.map** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @dso__load_sym(%struct.dso* %40, %struct.map* %41, %struct.symsrc* %11, %struct.symsrc* %11, i32 %42, i32 0)
  store i32 %43, i32* %10, align 4
  %44 = call i32 @symsrc__destroy(%struct.symsrc* %11)
  %45 = load i32, i32* %10, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %39
  %48 = load %struct.dso*, %struct.dso** %6, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @dso__set_long_name(%struct.dso* %48, i8* %49)
  %51 = load %struct.dso*, %struct.dso** %6, align 8
  %52 = load %struct.map*, %struct.map** %7, align 8
  %53 = getelementptr inbounds %struct.map, %struct.map* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dso__set_loaded(%struct.dso* %51, i32 %54)
  %56 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  br label %57

57:                                               ; preds = %47, %39
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %59

59:                                               ; preds = %57, %38
  %60 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @symsrc__init(%struct.symsrc*, %struct.dso*, i8*, i32) #2

declare dso_local i32 @dso__load_sym(%struct.dso*, %struct.map*, %struct.symsrc*, %struct.symsrc*, i32, i32) #2

declare dso_local i32 @symsrc__destroy(%struct.symsrc*) #2

declare dso_local i32 @dso__set_long_name(%struct.dso*, i8*) #2

declare dso_local i32 @dso__set_loaded(%struct.dso*, i32) #2

declare dso_local i32 @pr_debug(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
