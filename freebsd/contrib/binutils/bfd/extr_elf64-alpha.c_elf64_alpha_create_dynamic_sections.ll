; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_create_dynamic_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_create_dynamic_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf_link_hash_entry = type { i32 }
%struct.TYPE_3__ = type { %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry* }
%struct.TYPE_4__ = type { i32*, i32* }

@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_CODE = common dso_local global i32 0, align 4
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_IN_MEMORY = common dso_local global i32 0, align 4
@SEC_LINKER_CREATED = common dso_local global i32 0, align 4
@elf64_alpha_use_secureplt = common dso_local global i64 0, align 8
@SEC_READONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".plt\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"_PROCEDURE_LINKAGE_TABLE_\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c".rela.plt\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c".got.plt\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c".rela.got\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"_GLOBAL_OFFSET_TABLE_\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*)* @elf64_alpha_create_dynamic_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf64_alpha_create_dynamic_sections(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.elf_link_hash_entry*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %9 = load i32, i32* @SEC_ALLOC, align 4
  %10 = load i32, i32* @SEC_LOAD, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @SEC_CODE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SEC_IN_MEMORY, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %19 = or i32 %17, %18
  %20 = load i64, i64* @elf64_alpha_use_secureplt, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @SEC_READONLY, align 4
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  %27 = or i32 %19, %26
  store i32 %27, i32* %7, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32* @bfd_make_section_anyway_with_flags(i32* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32* %30, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %25
  %34 = load i32*, i32** %4, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @bfd_set_section_alignment(i32* %34, i32* %35, i32 4)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33, %25
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %3, align 4
  br label %153

40:                                               ; preds = %33
  %41 = load i32*, i32** %4, align 8
  %42 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call %struct.elf_link_hash_entry* @_bfd_elf_define_linkage_sym(i32* %41, %struct.bfd_link_info* %42, i32* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store %struct.elf_link_hash_entry* %44, %struct.elf_link_hash_entry** %8, align 8
  %45 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %46 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %47 = call %struct.TYPE_3__* @elf_hash_table(%struct.bfd_link_info* %46)
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store %struct.elf_link_hash_entry* %45, %struct.elf_link_hash_entry** %48, align 8
  %49 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %50 = icmp eq %struct.elf_link_hash_entry* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %3, align 4
  br label %153

53:                                               ; preds = %40
  %54 = load i32, i32* @SEC_ALLOC, align 4
  %55 = load i32, i32* @SEC_LOAD, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @SEC_IN_MEMORY, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @SEC_READONLY, align 4
  %64 = or i32 %62, %63
  store i32 %64, i32* %7, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32* @bfd_make_section_anyway_with_flags(i32* %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  store i32* %67, i32** %6, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %53
  %71 = load i32*, i32** %4, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @bfd_set_section_alignment(i32* %71, i32* %72, i32 3)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %70, %53
  %76 = load i32, i32* @FALSE, align 4
  store i32 %76, i32* %3, align 4
  br label %153

77:                                               ; preds = %70
  %78 = load i64, i64* @elf64_alpha_use_secureplt, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %77
  %81 = load i32, i32* @SEC_ALLOC, align 4
  %82 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %7, align 4
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32* @bfd_make_section_anyway_with_flags(i32* %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  store i32* %86, i32** %6, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %80
  %90 = load i32*, i32** %4, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @bfd_set_section_alignment(i32* %90, i32* %91, i32 3)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %89, %80
  %95 = load i32, i32* @FALSE, align 4
  store i32 %95, i32* %3, align 4
  br label %153

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96, %77
  %98 = load i32*, i32** %4, align 8
  %99 = call %struct.TYPE_4__* @alpha_elf_tdata(i32* %98)
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %97
  %104 = load i32*, i32** %4, align 8
  %105 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %106 = call i32 @elf64_alpha_create_got_section(i32* %104, %struct.bfd_link_info* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* @FALSE, align 4
  store i32 %109, i32* %3, align 4
  br label %153

110:                                              ; preds = %103
  br label %111

111:                                              ; preds = %110, %97
  %112 = load i32, i32* @SEC_ALLOC, align 4
  %113 = load i32, i32* @SEC_LOAD, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @SEC_IN_MEMORY, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @SEC_READONLY, align 4
  %122 = or i32 %120, %121
  store i32 %122, i32* %7, align 4
  %123 = load i32*, i32** %4, align 8
  %124 = load i32, i32* %7, align 4
  %125 = call i32* @bfd_make_section_anyway_with_flags(i32* %123, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %124)
  store i32* %125, i32** %6, align 8
  %126 = load i32*, i32** %6, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %133, label %128

128:                                              ; preds = %111
  %129 = load i32*, i32** %4, align 8
  %130 = load i32*, i32** %6, align 8
  %131 = call i32 @bfd_set_section_alignment(i32* %129, i32* %130, i32 3)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %128, %111
  %134 = load i32, i32* @FALSE, align 4
  store i32 %134, i32* %3, align 4
  br label %153

135:                                              ; preds = %128
  %136 = load i32*, i32** %4, align 8
  %137 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %138 = load i32*, i32** %4, align 8
  %139 = call %struct.TYPE_4__* @alpha_elf_tdata(i32* %138)
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = call %struct.elf_link_hash_entry* @_bfd_elf_define_linkage_sym(i32* %136, %struct.bfd_link_info* %137, i32* %141, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  store %struct.elf_link_hash_entry* %142, %struct.elf_link_hash_entry** %8, align 8
  %143 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %144 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %145 = call %struct.TYPE_3__* @elf_hash_table(%struct.bfd_link_info* %144)
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  store %struct.elf_link_hash_entry* %143, %struct.elf_link_hash_entry** %146, align 8
  %147 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %148 = icmp eq %struct.elf_link_hash_entry* %147, null
  br i1 %148, label %149, label %151

149:                                              ; preds = %135
  %150 = load i32, i32* @FALSE, align 4
  store i32 %150, i32* %3, align 4
  br label %153

151:                                              ; preds = %135
  %152 = load i32, i32* @TRUE, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %151, %149, %133, %108, %94, %75, %51, %38
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32* @bfd_make_section_anyway_with_flags(i32*, i8*, i32) #1

declare dso_local i32 @bfd_set_section_alignment(i32*, i32*, i32) #1

declare dso_local %struct.elf_link_hash_entry* @_bfd_elf_define_linkage_sym(i32*, %struct.bfd_link_info*, i32*, i8*) #1

declare dso_local %struct.TYPE_3__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_4__* @alpha_elf_tdata(i32*) #1

declare dso_local i32 @elf64_alpha_create_got_section(i32*, %struct.bfd_link_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
