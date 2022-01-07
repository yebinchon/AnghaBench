; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_binary.c_binary_object_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_binary.c_binary_object_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, %struct.TYPE_11__, i32, i64 }
%struct.TYPE_11__ = type { i8* }
%struct.stat = type { i32 }
%struct.TYPE_13__ = type { i64, i32, i64 }
%struct.TYPE_14__ = type { i64 }

@bfd_error_wrong_format = common dso_local global i32 0, align 4
@BIN_SYMS = common dso_local global i32 0, align 4
@bfd_error_system_call = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_DATA = common dso_local global i32 0, align 4
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c".data\00", align 1
@bfd_arch_unknown = common dso_local global i64 0, align 8
@bfd_external_binary_architecture = common dso_local global i64 0, align 8
@bfd_external_machine = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_12__*)* @binary_object_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @binary_object_p(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @bfd_error_wrong_format, align 4
  %13 = call i32 @bfd_set_error(i32 %12)
  store i32* null, i32** %2, align 8
  br label %77

14:                                               ; preds = %1
  %15 = load i32, i32* @BIN_SYMS, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = call i64 @bfd_stat(%struct.TYPE_12__* %18, %struct.stat* %4)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32, i32* @bfd_error_system_call, align 4
  %23 = call i32 @bfd_set_error(i32 %22)
  store i32* null, i32** %2, align 8
  br label %77

24:                                               ; preds = %14
  %25 = load i32, i32* @SEC_ALLOC, align 4
  %26 = load i32, i32* @SEC_LOAD, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @SEC_DATA, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %6, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call %struct.TYPE_13__* @bfd_make_section_with_flags(%struct.TYPE_12__* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %33)
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %5, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %36 = icmp eq %struct.TYPE_13__* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  store i32* null, i32** %2, align 8
  br label %77

38:                                               ; preds = %24
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %48 = bitcast %struct.TYPE_13__* %47 to i8*
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  store i8* %48, i8** %51, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = call %struct.TYPE_14__* @bfd_get_arch_info(%struct.TYPE_12__* %52)
  %54 = icmp ne %struct.TYPE_14__* %53, null
  br i1 %54, label %55, label %73

55:                                               ; preds = %38
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %57 = call %struct.TYPE_14__* @bfd_get_arch_info(%struct.TYPE_12__* %56)
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @bfd_arch_unknown, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %55
  %63 = load i64, i64* @bfd_external_binary_architecture, align 8
  %64 = load i64, i64* @bfd_arch_unknown, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %68 = load i64, i64* @bfd_external_binary_architecture, align 8
  %69 = load i32, i32* @bfd_external_machine, align 4
  %70 = call i32 @bfd_lookup_arch(i64 %68, i32 %69)
  %71 = call i32 @bfd_set_arch_info(%struct.TYPE_12__* %67, i32 %70)
  br label %72

72:                                               ; preds = %66, %62, %55
  br label %73

73:                                               ; preds = %72, %38
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** %2, align 8
  br label %77

77:                                               ; preds = %73, %37, %21, %11
  %78 = load i32*, i32** %2, align 8
  ret i32* %78
}

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i64 @bfd_stat(%struct.TYPE_12__*, %struct.stat*) #1

declare dso_local %struct.TYPE_13__* @bfd_make_section_with_flags(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local %struct.TYPE_14__* @bfd_get_arch_info(%struct.TYPE_12__*) #1

declare dso_local i32 @bfd_set_arch_info(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @bfd_lookup_arch(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
