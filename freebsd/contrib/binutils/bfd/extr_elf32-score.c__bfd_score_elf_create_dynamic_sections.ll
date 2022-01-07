; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c__bfd_score_elf_create_dynamic_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c__bfd_score_elf_create_dynamic_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf_link_hash_entry = type { i32, i32, i64 }
%struct.bfd_link_hash_entry = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_IN_MEMORY = common dso_local global i32 0, align 4
@SEC_LINKER_CREATED = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c".dynamic\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SCORE_ELF_STUB_SECTION_NAME = common dso_local global i8* null, align 8
@SEC_CODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"_DYNAMIC_LINK\00", align 1
@BSF_GLOBAL = common dso_local global i32 0, align 4
@bfd_abs_section_ptr = common dso_local global i32 0, align 4
@STT_SECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*)* @_bfd_score_elf_create_dynamic_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bfd_score_elf_create_dynamic_sections(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.elf_link_hash_entry*, align 8
  %7 = alloca %struct.bfd_link_hash_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %11 = load i32, i32* @SEC_ALLOC, align 4
  %12 = load i32, i32* @SEC_LOAD, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SEC_IN_MEMORY, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SEC_READONLY, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = call i32* @bfd_get_section_by_name(i32* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %23, i32** %9, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load i32*, i32** %4, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @bfd_set_section_flags(i32* %27, i32* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %3, align 4
  br label %114

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %2
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %38 = load i32, i32* @FALSE, align 4
  %39 = call i32 @score_elf_create_got_section(i32* %36, %struct.bfd_link_info* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %3, align 4
  br label %114

43:                                               ; preds = %35
  %44 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %45 = call %struct.TYPE_4__* @elf_hash_table(%struct.bfd_link_info* %44)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @TRUE, align 4
  %49 = call i32 @score_elf_rel_dyn_section(i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %3, align 4
  br label %114

53:                                               ; preds = %43
  %54 = load i32*, i32** %4, align 8
  %55 = load i8*, i8** @SCORE_ELF_STUB_SECTION_NAME, align 8
  %56 = call i32* @bfd_get_section_by_name(i32* %54, i8* %55)
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %75

58:                                               ; preds = %53
  %59 = load i32*, i32** %4, align 8
  %60 = load i8*, i8** @SCORE_ELF_STUB_SECTION_NAME, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @SEC_CODE, align 4
  %63 = or i32 %61, %62
  %64 = call i32* @bfd_make_section_with_flags(i32* %59, i8* %60, i32 %63)
  store i32* %64, i32** %9, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %58
  %68 = load i32*, i32** %4, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @bfd_set_section_alignment(i32* %68, i32* %69, i32 2)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %67, %58
  %73 = load i32, i32* @FALSE, align 4
  store i32 %73, i32* %3, align 4
  br label %114

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74, %53
  %76 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %77 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %112, label %80

80:                                               ; preds = %75
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  store %struct.bfd_link_hash_entry* null, %struct.bfd_link_hash_entry** %7, align 8
  %81 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = load i32, i32* @BSF_GLOBAL, align 4
  %85 = load i32, i32* @bfd_abs_section_ptr, align 4
  %86 = load i32, i32* @FALSE, align 4
  %87 = load i32*, i32** %4, align 8
  %88 = call %struct.TYPE_3__* @get_elf_backend_data(i32* %87)
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @_bfd_generic_link_add_one_symbol(%struct.bfd_link_info* %81, i32* %82, i8* %83, i32 %84, i32 %85, i32 0, i8* null, i32 %86, i32 %90, %struct.bfd_link_hash_entry** %7)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %80
  %94 = load i32, i32* @FALSE, align 4
  store i32 %94, i32* %3, align 4
  br label %114

95:                                               ; preds = %80
  %96 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %7, align 8
  %97 = bitcast %struct.bfd_link_hash_entry* %96 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %97, %struct.elf_link_hash_entry** %6, align 8
  %98 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %99 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %98, i32 0, i32 2
  store i64 0, i64* %99, align 8
  %100 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %101 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %100, i32 0, i32 0
  store i32 1, i32* %101, align 8
  %102 = load i32, i32* @STT_SECTION, align 4
  %103 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %104 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %106 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %107 = call i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info* %105, %struct.elf_link_hash_entry* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %95
  %110 = load i32, i32* @FALSE, align 4
  store i32 %110, i32* %3, align 4
  br label %114

111:                                              ; preds = %95
  br label %112

112:                                              ; preds = %111, %75
  %113 = load i32, i32* @TRUE, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %112, %109, %93, %72, %51, %41, %32
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local i32 @bfd_set_section_flags(i32*, i32*, i32) #1

declare dso_local i32 @score_elf_create_got_section(i32*, %struct.bfd_link_info*, i32) #1

declare dso_local i32 @score_elf_rel_dyn_section(i32, i32) #1

declare dso_local %struct.TYPE_4__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32* @bfd_make_section_with_flags(i32*, i8*, i32) #1

declare dso_local i32 @bfd_set_section_alignment(i32*, i32*, i32) #1

declare dso_local i32 @_bfd_generic_link_add_one_symbol(%struct.bfd_link_info*, i32*, i8*, i32, i32, i32, i8*, i32, i32, %struct.bfd_link_hash_entry**) #1

declare dso_local %struct.TYPE_3__* @get_elf_backend_data(i32*) #1

declare dso_local i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info*, %struct.elf_link_hash_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
