; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c_score_elf_create_got_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c_score_elf_create_got_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.elf_link_hash_entry = type { i32, i32, i64 }
%struct.bfd_link_hash_entry = type { i32 }
%struct.score_got_info = type { i32*, i32*, i8*, i8*, i64, i32* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.score_got_info* }

@TRUE = common dso_local global i64 0, align 8
@SEC_EXCLUDE = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_IN_MEMORY = common dso_local global i32 0, align 4
@SEC_LINKER_CREATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".got\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"_GLOBAL_OFFSET_TABLE_\00", align 1
@BSF_GLOBAL = common dso_local global i32 0, align 4
@STT_OBJECT = common dso_local global i32 0, align 4
@SCORE_RESERVED_GOTNO = common dso_local global i8* null, align 8
@score_elf_got_entry_hash = common dso_local global i32 0, align 4
@score_elf_got_entry_eq = common dso_local global i32 0, align 4
@SHF_ALLOC = common dso_local global i32 0, align 4
@SHF_WRITE = common dso_local global i32 0, align 4
@SHF_SCORE_GPREL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.bfd_link_info*, i64)* @score_elf_create_got_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @score_elf_create_got_section(i32* %0, %struct.bfd_link_info* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.elf_link_hash_entry*, align 8
  %11 = alloca %struct.bfd_link_hash_entry*, align 8
  %12 = alloca %struct.score_got_info*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i64, i64* @TRUE, align 8
  %16 = call %struct.TYPE_15__* @score_elf_got_section(i32* %14, i64 %15)
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %9, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %18 = icmp ne %struct.TYPE_15__* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %3
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @SEC_EXCLUDE, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %22, %19
  %30 = load i64, i64* @TRUE, align 8
  store i64 %30, i64* %4, align 8
  br label %146

31:                                               ; preds = %3
  %32 = load i32, i32* @SEC_ALLOC, align 4
  %33 = load i32, i32* @SEC_LOAD, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @SEC_IN_MEMORY, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %8, align 4
  %41 = load i64, i64* %7, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %31
  %44 = load i32, i32* @SEC_EXCLUDE, align 4
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %43, %31
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call %struct.TYPE_15__* @bfd_make_section_with_flags(i32* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %49)
  store %struct.TYPE_15__* %50, %struct.TYPE_15__** %9, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %52 = icmp eq %struct.TYPE_15__* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %47
  %54 = load i32*, i32** %5, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %56 = call i32 @bfd_set_section_alignment(i32* %54, %struct.TYPE_15__* %55, i32 4)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %53, %47
  %59 = load i64, i64* @FALSE, align 8
  store i64 %59, i64* %4, align 8
  br label %146

60:                                               ; preds = %53
  store %struct.bfd_link_hash_entry* null, %struct.bfd_link_hash_entry** %11, align 8
  %61 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* @BSF_GLOBAL, align 4
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %65 = load i64, i64* @FALSE, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = call %struct.TYPE_17__* @get_elf_backend_data(i32* %66)
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @_bfd_generic_link_add_one_symbol(%struct.bfd_link_info* %61, i32* %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %63, %struct.TYPE_15__* %64, i32 0, i32* null, i64 %65, i32 %69, %struct.bfd_link_hash_entry** %11)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %60
  %73 = load i64, i64* @FALSE, align 8
  store i64 %73, i64* %4, align 8
  br label %146

74:                                               ; preds = %60
  %75 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %11, align 8
  %76 = bitcast %struct.bfd_link_hash_entry* %75 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %76, %struct.elf_link_hash_entry** %10, align 8
  %77 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %10, align 8
  %78 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  %79 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %10, align 8
  %80 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load i32, i32* @STT_OBJECT, align 4
  %82 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %10, align 8
  %83 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %85 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %74
  %89 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %90 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %10, align 8
  %91 = call i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info* %89, %struct.elf_link_hash_entry* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %88
  %94 = load i64, i64* @FALSE, align 8
  store i64 %94, i64* %4, align 8
  br label %146

95:                                               ; preds = %88, %74
  store i32 48, i32* %13, align 4
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* %13, align 4
  %98 = call %struct.score_got_info* @bfd_alloc(i32* %96, i32 %97)
  store %struct.score_got_info* %98, %struct.score_got_info** %12, align 8
  %99 = load %struct.score_got_info*, %struct.score_got_info** %12, align 8
  %100 = icmp eq %struct.score_got_info* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i64, i64* @FALSE, align 8
  store i64 %102, i64* %4, align 8
  br label %146

103:                                              ; preds = %95
  %104 = load %struct.score_got_info*, %struct.score_got_info** %12, align 8
  %105 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %104, i32 0, i32 5
  store i32* null, i32** %105, align 8
  %106 = load %struct.score_got_info*, %struct.score_got_info** %12, align 8
  %107 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %106, i32 0, i32 4
  store i64 0, i64* %107, align 8
  %108 = load i8*, i8** @SCORE_RESERVED_GOTNO, align 8
  %109 = load %struct.score_got_info*, %struct.score_got_info** %12, align 8
  %110 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %109, i32 0, i32 3
  store i8* %108, i8** %110, align 8
  %111 = load i8*, i8** @SCORE_RESERVED_GOTNO, align 8
  %112 = load %struct.score_got_info*, %struct.score_got_info** %12, align 8
  %113 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  %114 = load %struct.score_got_info*, %struct.score_got_info** %12, align 8
  %115 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %114, i32 0, i32 1
  store i32* null, i32** %115, align 8
  %116 = load i32, i32* @score_elf_got_entry_hash, align 4
  %117 = load i32, i32* @score_elf_got_entry_eq, align 4
  %118 = call i32* @htab_try_create(i32 1, i32 %116, i32 %117, i32* null)
  %119 = load %struct.score_got_info*, %struct.score_got_info** %12, align 8
  %120 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %119, i32 0, i32 0
  store i32* %118, i32** %120, align 8
  %121 = load %struct.score_got_info*, %struct.score_got_info** %12, align 8
  %122 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %127

125:                                              ; preds = %103
  %126 = load i64, i64* @FALSE, align 8
  store i64 %126, i64* %4, align 8
  br label %146

127:                                              ; preds = %103
  %128 = load %struct.score_got_info*, %struct.score_got_info** %12, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %130 = call %struct.TYPE_16__* @score_elf_section_data(%struct.TYPE_15__* %129)
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  store %struct.score_got_info* %128, %struct.score_got_info** %132, align 8
  %133 = load i32, i32* @SHF_ALLOC, align 4
  %134 = load i32, i32* @SHF_WRITE, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @SHF_SCORE_GPREL, align 4
  %137 = or i32 %135, %136
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %139 = call %struct.TYPE_16__* @score_elf_section_data(%struct.TYPE_15__* %138)
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %137
  store i32 %144, i32* %142, align 8
  %145 = load i64, i64* @TRUE, align 8
  store i64 %145, i64* %4, align 8
  br label %146

146:                                              ; preds = %127, %125, %101, %93, %72, %58, %29
  %147 = load i64, i64* %4, align 8
  ret i64 %147
}

declare dso_local %struct.TYPE_15__* @score_elf_got_section(i32*, i64) #1

declare dso_local %struct.TYPE_15__* @bfd_make_section_with_flags(i32*, i8*, i32) #1

declare dso_local i32 @bfd_set_section_alignment(i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @_bfd_generic_link_add_one_symbol(%struct.bfd_link_info*, i32*, i8*, i32, %struct.TYPE_15__*, i32, i32*, i64, i32, %struct.bfd_link_hash_entry**) #1

declare dso_local %struct.TYPE_17__* @get_elf_backend_data(i32*) #1

declare dso_local i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info*, %struct.elf_link_hash_entry*) #1

declare dso_local %struct.score_got_info* @bfd_alloc(i32*, i32) #1

declare dso_local i32* @htab_try_create(i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_16__* @score_elf_section_data(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
