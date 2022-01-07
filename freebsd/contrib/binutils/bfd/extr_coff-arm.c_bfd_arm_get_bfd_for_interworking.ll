; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coff-arm.c_bfd_arm_get_bfd_for_interworking.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coff-arm.c_bfd_arm_get_bfd_for_interworking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i64 }
%struct.coff_arm_link_hash_table = type { i32* }

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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_arm_get_bfd_for_interworking(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.coff_arm_link_hash_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %9 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %10 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @TRUE, align 4
  store i32 %14, i32* %3, align 4
  br label %97

15:                                               ; preds = %2
  %16 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %17 = call %struct.coff_arm_link_hash_table* @coff_arm_hash_table(%struct.bfd_link_info* %16)
  store %struct.coff_arm_link_hash_table* %17, %struct.coff_arm_link_hash_table** %6, align 8
  %18 = load %struct.coff_arm_link_hash_table*, %struct.coff_arm_link_hash_table** %6, align 8
  %19 = icmp ne %struct.coff_arm_link_hash_table* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @BFD_ASSERT(i32 %20)
  %22 = load %struct.coff_arm_link_hash_table*, %struct.coff_arm_link_hash_table** %6, align 8
  %23 = getelementptr inbounds %struct.coff_arm_link_hash_table, %struct.coff_arm_link_hash_table* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* %3, align 4
  br label %97

28:                                               ; preds = %15
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @ARM2THUMB_GLUE_SECTION_NAME, align 4
  %31 = call i32* @bfd_get_section_by_name(i32* %29, i32 %30)
  store i32* %31, i32** %8, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %60

34:                                               ; preds = %28
  %35 = load i32, i32* @SEC_ALLOC, align 4
  %36 = load i32, i32* @SEC_LOAD, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @SEC_IN_MEMORY, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @SEC_CODE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @SEC_READONLY, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %7, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* @ARM2THUMB_GLUE_SECTION_NAME, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32* @bfd_make_section_with_flags(i32* %46, i32 %47, i32 %48)
  store i32* %49, i32** %8, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %34
  %53 = load i32*, i32** %4, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @bfd_set_section_alignment(i32* %53, i32* %54, i32 2)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %52, %34
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %3, align 4
  br label %97

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %28
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* @THUMB2ARM_GLUE_SECTION_NAME, align 4
  %63 = call i32* @bfd_get_section_by_name(i32* %61, i32 %62)
  store i32* %63, i32** %8, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %92

66:                                               ; preds = %60
  %67 = load i32, i32* @SEC_ALLOC, align 4
  %68 = load i32, i32* @SEC_LOAD, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @SEC_IN_MEMORY, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @SEC_CODE, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @SEC_READONLY, align 4
  %77 = or i32 %75, %76
  store i32 %77, i32* %7, align 4
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* @THUMB2ARM_GLUE_SECTION_NAME, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32* @bfd_make_section_with_flags(i32* %78, i32 %79, i32 %80)
  store i32* %81, i32** %8, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %66
  %85 = load i32*, i32** %4, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @bfd_set_section_alignment(i32* %85, i32* %86, i32 2)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %84, %66
  %90 = load i32, i32* @FALSE, align 4
  store i32 %90, i32* %3, align 4
  br label %97

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %91, %60
  %93 = load i32*, i32** %4, align 8
  %94 = load %struct.coff_arm_link_hash_table*, %struct.coff_arm_link_hash_table** %6, align 8
  %95 = getelementptr inbounds %struct.coff_arm_link_hash_table, %struct.coff_arm_link_hash_table* %94, i32 0, i32 0
  store i32* %93, i32** %95, align 8
  %96 = load i32, i32* @TRUE, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %92, %89, %57, %26, %13
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.coff_arm_link_hash_table* @coff_arm_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32* @bfd_get_section_by_name(i32*, i32) #1

declare dso_local i32* @bfd_make_section_with_flags(i32*, i32, i32) #1

declare dso_local i32 @bfd_set_section_alignment(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
