; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c__bfd_elf_merge_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c__bfd_elf_merge_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_10__* }
%struct.bfd_link_info = type { %struct.TYPE_9__*, i32 }
%struct.bfd_elf_section_data = type { i64 }
%struct.TYPE_11__ = type { i32* }

@FALSE = common dso_local global i32 0, align 4
@DYNAMIC = common dso_local global i32 0, align 4
@SEC_MERGE = common dso_local global i32 0, align 4
@ELF_INFO_TYPE_MERGE = common dso_local global i32 0, align 4
@merge_sections_remove_hook = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_elf_merge_sections(%struct.TYPE_9__* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.bfd_elf_section_data*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %9 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %10 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @is_elf_hash_table(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %3, align 4
  br label %103

16:                                               ; preds = %2
  %17 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %18 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %6, align 8
  br label %20

20:                                               ; preds = %82, %16
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = icmp ne %struct.TYPE_9__* %21, null
  br i1 %22, label %23, label %86

23:                                               ; preds = %20
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @DYNAMIC, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %81

30:                                               ; preds = %23
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %7, align 8
  br label %34

34:                                               ; preds = %76, %30
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %36 = icmp ne %struct.TYPE_10__* %35, null
  br i1 %36, label %37, label %80

37:                                               ; preds = %34
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SEC_MERGE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %75

44:                                               ; preds = %37
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @bfd_is_abs_section(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %75, label %50

50:                                               ; preds = %44
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %52 = call %struct.bfd_elf_section_data* @elf_section_data(%struct.TYPE_10__* %51)
  store %struct.bfd_elf_section_data* %52, %struct.bfd_elf_section_data** %8, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %55 = call %struct.TYPE_11__* @elf_hash_table(%struct.bfd_link_info* %54)
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %58 = load %struct.bfd_elf_section_data*, %struct.bfd_elf_section_data** %8, align 8
  %59 = getelementptr inbounds %struct.bfd_elf_section_data, %struct.bfd_elf_section_data* %58, i32 0, i32 0
  %60 = call i32 @_bfd_add_merge_section(%struct.TYPE_9__* %53, i32** %56, %struct.TYPE_10__* %57, i64* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %50
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %3, align 4
  br label %103

64:                                               ; preds = %50
  %65 = load %struct.bfd_elf_section_data*, %struct.bfd_elf_section_data** %8, align 8
  %66 = getelementptr inbounds %struct.bfd_elf_section_data, %struct.bfd_elf_section_data* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* @ELF_INFO_TYPE_MERGE, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %69, %64
  br label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %74, %44, %37
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  store %struct.TYPE_10__* %79, %struct.TYPE_10__** %7, align 8
  br label %34

80:                                               ; preds = %34
  br label %81

81:                                               ; preds = %80, %23
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  store %struct.TYPE_9__* %85, %struct.TYPE_9__** %6, align 8
  br label %20

86:                                               ; preds = %20
  %87 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %88 = call %struct.TYPE_11__* @elf_hash_table(%struct.bfd_link_info* %87)
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %86
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %94 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %95 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %96 = call %struct.TYPE_11__* @elf_hash_table(%struct.bfd_link_info* %95)
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* @merge_sections_remove_hook, align 4
  %100 = call i32 @_bfd_merge_sections(%struct.TYPE_9__* %93, %struct.bfd_link_info* %94, i32* %98, i32 %99)
  br label %101

101:                                              ; preds = %92, %86
  %102 = load i32, i32* @TRUE, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %62, %14
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @is_elf_hash_table(i32) #1

declare dso_local i32 @bfd_is_abs_section(i32) #1

declare dso_local %struct.bfd_elf_section_data* @elf_section_data(%struct.TYPE_10__*) #1

declare dso_local i32 @_bfd_add_merge_section(%struct.TYPE_9__*, i32**, %struct.TYPE_10__*, i64*) #1

declare dso_local %struct.TYPE_11__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @_bfd_merge_sections(%struct.TYPE_9__*, %struct.bfd_link_info*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
