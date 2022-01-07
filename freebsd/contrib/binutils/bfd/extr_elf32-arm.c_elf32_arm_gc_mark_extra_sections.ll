; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_gc_mark_extra_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_gc_mark_extra_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i64, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@bfd_target_elf_flavour = common dso_local global i64 0, align 8
@SHT_ARM_EXIDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bfd_link_info*, i32)* @elf32_arm_gc_mark_extra_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @elf32_arm_gc_mark_extra_sections(%struct.bfd_link_info* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_14__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i64, i64* @TRUE, align 8
  store i64 %11, i64* %8, align 8
  br label %12

12:                                               ; preds = %89, %2
  %13 = load i64, i64* %8, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %90

15:                                               ; preds = %12
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* %8, align 8
  %17 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %18 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %6, align 8
  br label %20

20:                                               ; preds = %85, %15
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = icmp ne %struct.TYPE_12__* %21, null
  br i1 %22, label %23, label %89

23:                                               ; preds = %20
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = call i64 @bfd_get_flavour(%struct.TYPE_12__* %24)
  %26 = load i64, i64* @bfd_target_elf_flavour, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %85

29:                                               ; preds = %23
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %31 = call %struct.TYPE_14__** @elf_elfsections(%struct.TYPE_12__* %30)
  store %struct.TYPE_14__** %31, %struct.TYPE_14__*** %7, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %9, align 8
  br label %35

35:                                               ; preds = %80, %29
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %37 = icmp ne %struct.TYPE_13__* %36, null
  br i1 %37, label %38, label %84

38:                                               ; preds = %35
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %40 = call %struct.TYPE_15__* @elf_section_data(%struct.TYPE_13__* %39)
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %10, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SHT_ARM_EXIDX, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %79

47:                                               ; preds = %38
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %79

52:                                               ; preds = %47
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %79, label %57

57:                                               ; preds = %52
  %58 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %58, i64 %61
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %57
  %70 = load i64, i64* @TRUE, align 8
  store i64 %70, i64* %8, align 8
  %71 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @_bfd_elf_gc_mark(%struct.bfd_link_info* %71, %struct.TYPE_13__* %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %69
  %77 = load i64, i64* @FALSE, align 8
  store i64 %77, i64* %3, align 8
  br label %92

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78, %57, %52, %47, %38
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  store %struct.TYPE_13__* %83, %struct.TYPE_13__** %9, align 8
  br label %35

84:                                               ; preds = %35
  br label %85

85:                                               ; preds = %84, %28
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  store %struct.TYPE_12__* %88, %struct.TYPE_12__** %6, align 8
  br label %20

89:                                               ; preds = %20
  br label %12

90:                                               ; preds = %12
  %91 = load i64, i64* @TRUE, align 8
  store i64 %91, i64* %3, align 8
  br label %92

92:                                               ; preds = %90, %76
  %93 = load i64, i64* %3, align 8
  ret i64 %93
}

declare dso_local i64 @bfd_get_flavour(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_14__** @elf_elfsections(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_15__* @elf_section_data(%struct.TYPE_13__*) #1

declare dso_local i32 @_bfd_elf_gc_mark(%struct.bfd_link_info*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
