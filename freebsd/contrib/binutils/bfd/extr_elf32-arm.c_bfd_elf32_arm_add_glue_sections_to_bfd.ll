; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_bfd_elf32_arm_add_glue_sections_to_bfd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_bfd_elf32_arm_add_glue_sections_to_bfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i64 }
%struct.TYPE_5__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@ARM2THUMB_GLUE_SECTION_NAME = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_IN_MEMORY = common dso_local global i32 0, align 4
@SEC_CODE = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@THUMB2ARM_GLUE_SECTION_NAME = common dso_local global i32 0, align 4
@VFP11_ERRATUM_VENEER_SECTION_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_elf32_arm_add_glue_sections_to_bfd(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %8 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %9 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @TRUE, align 4
  store i32 %13, i32* %3, align 4
  br label %118

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @ARM2THUMB_GLUE_SECTION_NAME, align 4
  %17 = call %struct.TYPE_5__* @bfd_get_section_by_name(i32* %15, i32 %16)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %7, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = icmp eq %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %48

20:                                               ; preds = %14
  %21 = load i32, i32* @SEC_ALLOC, align 4
  %22 = load i32, i32* @SEC_LOAD, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @SEC_IN_MEMORY, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @SEC_CODE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @SEC_READONLY, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %6, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @ARM2THUMB_GLUE_SECTION_NAME, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call %struct.TYPE_5__* @bfd_make_section_with_flags(i32* %32, i32 %33, i32 %34)
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %7, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %37 = icmp eq %struct.TYPE_5__* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %20
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %41 = call i32 @bfd_set_section_alignment(i32* %39, %struct.TYPE_5__* %40, i32 2)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %38, %20
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %3, align 4
  br label %118

45:                                               ; preds = %38
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %14
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @THUMB2ARM_GLUE_SECTION_NAME, align 4
  %51 = call %struct.TYPE_5__* @bfd_get_section_by_name(i32* %49, i32 %50)
  store %struct.TYPE_5__* %51, %struct.TYPE_5__** %7, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %53 = icmp eq %struct.TYPE_5__* %52, null
  br i1 %53, label %54, label %82

54:                                               ; preds = %48
  %55 = load i32, i32* @SEC_ALLOC, align 4
  %56 = load i32, i32* @SEC_LOAD, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @SEC_IN_MEMORY, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @SEC_CODE, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @SEC_READONLY, align 4
  %65 = or i32 %63, %64
  store i32 %65, i32* %6, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* @THUMB2ARM_GLUE_SECTION_NAME, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call %struct.TYPE_5__* @bfd_make_section_with_flags(i32* %66, i32 %67, i32 %68)
  store %struct.TYPE_5__* %69, %struct.TYPE_5__** %7, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %71 = icmp eq %struct.TYPE_5__* %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %54
  %73 = load i32*, i32** %4, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %75 = call i32 @bfd_set_section_alignment(i32* %73, %struct.TYPE_5__* %74, i32 2)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %72, %54
  %78 = load i32, i32* @FALSE, align 4
  store i32 %78, i32* %3, align 4
  br label %118

79:                                               ; preds = %72
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %48
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* @VFP11_ERRATUM_VENEER_SECTION_NAME, align 4
  %85 = call %struct.TYPE_5__* @bfd_get_section_by_name(i32* %83, i32 %84)
  store %struct.TYPE_5__* %85, %struct.TYPE_5__** %7, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %87 = icmp eq %struct.TYPE_5__* %86, null
  br i1 %87, label %88, label %116

88:                                               ; preds = %82
  %89 = load i32, i32* @SEC_ALLOC, align 4
  %90 = load i32, i32* @SEC_LOAD, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @SEC_IN_MEMORY, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @SEC_CODE, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @SEC_READONLY, align 4
  %99 = or i32 %97, %98
  store i32 %99, i32* %6, align 4
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* @VFP11_ERRATUM_VENEER_SECTION_NAME, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call %struct.TYPE_5__* @bfd_make_section_with_flags(i32* %100, i32 %101, i32 %102)
  store %struct.TYPE_5__* %103, %struct.TYPE_5__** %7, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %105 = icmp eq %struct.TYPE_5__* %104, null
  br i1 %105, label %111, label %106

106:                                              ; preds = %88
  %107 = load i32*, i32** %4, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %109 = call i32 @bfd_set_section_alignment(i32* %107, %struct.TYPE_5__* %108, i32 2)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %106, %88
  %112 = load i32, i32* @FALSE, align 4
  store i32 %112, i32* %3, align 4
  br label %118

113:                                              ; preds = %106
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  store i32 1, i32* %115, align 4
  br label %116

116:                                              ; preds = %113, %82
  %117 = load i32, i32* @TRUE, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %116, %111, %77, %43, %12
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.TYPE_5__* @bfd_get_section_by_name(i32*, i32) #1

declare dso_local %struct.TYPE_5__* @bfd_make_section_with_flags(i32*, i32, i32) #1

declare dso_local i32 @bfd_set_section_alignment(i32*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
