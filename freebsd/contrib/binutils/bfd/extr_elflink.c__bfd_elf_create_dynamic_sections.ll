; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_create_dynamic_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_create_dynamic_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf_link_hash_entry = type { i32 }
%struct.elf_backend_data = type { i32, %struct.TYPE_3__*, i64, i64, i64, i32, i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.elf_link_hash_entry* }

@SEC_CODE = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".plt\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"_PROCEDURE_LINKAGE_TABLE_\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c".rela.plt\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c".rel.plt\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c".dynbss\00", align 1
@SEC_LINKER_CREATED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c".rela.bss\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c".rel.bss\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_elf_create_dynamic_sections(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.elf_link_hash_entry*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.elf_backend_data*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call %struct.elf_backend_data* @get_elf_backend_data(i32* %11)
  store %struct.elf_backend_data* %12, %struct.elf_backend_data** %10, align 8
  %13 = load %struct.elf_backend_data*, %struct.elf_backend_data** %10, align 8
  %14 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.elf_backend_data*, %struct.elf_backend_data** %10, align 8
  %18 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %17, i32 0, i32 7
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load i32, i32* @SEC_CODE, align 4
  %23 = load i32, i32* @SEC_LOAD, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %7, align 4
  br label %38

30:                                               ; preds = %2
  %31 = load i32, i32* @SEC_ALLOC, align 4
  %32 = load i32, i32* @SEC_CODE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @SEC_LOAD, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %30, %21
  %39 = load %struct.elf_backend_data*, %struct.elf_backend_data** %10, align 8
  %40 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %39, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @SEC_READONLY, align 4
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32* @bfd_make_section_with_flags(i32* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %49)
  store i32* %50, i32** %9, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %47
  %54 = load i32*, i32** %4, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = load %struct.elf_backend_data*, %struct.elf_backend_data** %10, align 8
  %57 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @bfd_set_section_alignment(i32* %54, i32* %55, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %53, %47
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %3, align 4
  br label %165

63:                                               ; preds = %53
  %64 = load %struct.elf_backend_data*, %struct.elf_backend_data** %10, align 8
  %65 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %63
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = call %struct.elf_link_hash_entry* @_bfd_elf_define_linkage_sym(i32* %69, %struct.bfd_link_info* %70, i32* %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store %struct.elf_link_hash_entry* %72, %struct.elf_link_hash_entry** %8, align 8
  %73 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %74 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %75 = call %struct.TYPE_4__* @elf_hash_table(%struct.bfd_link_info* %74)
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store %struct.elf_link_hash_entry* %73, %struct.elf_link_hash_entry** %76, align 8
  %77 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %78 = icmp eq %struct.elf_link_hash_entry* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %3, align 4
  br label %165

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %81, %63
  %83 = load i32*, i32** %4, align 8
  %84 = load %struct.elf_backend_data*, %struct.elf_backend_data** %10, align 8
  %85 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @SEC_READONLY, align 4
  %92 = or i32 %90, %91
  %93 = call i32* @bfd_make_section_with_flags(i32* %83, i8* %89, i32 %92)
  store i32* %93, i32** %9, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %106, label %96

96:                                               ; preds = %82
  %97 = load i32*, i32** %4, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = load %struct.elf_backend_data*, %struct.elf_backend_data** %10, align 8
  %100 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %99, i32 0, i32 1
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @bfd_set_section_alignment(i32* %97, i32* %98, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %96, %82
  %107 = load i32, i32* @FALSE, align 4
  store i32 %107, i32* %3, align 4
  br label %165

108:                                              ; preds = %96
  %109 = load i32*, i32** %4, align 8
  %110 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %111 = call i32 @_bfd_elf_create_got_section(i32* %109, %struct.bfd_link_info* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %108
  %114 = load i32, i32* @FALSE, align 4
  store i32 %114, i32* %3, align 4
  br label %165

115:                                              ; preds = %108
  %116 = load %struct.elf_backend_data*, %struct.elf_backend_data** %10, align 8
  %117 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %163

120:                                              ; preds = %115
  %121 = load i32*, i32** %4, align 8
  %122 = load i32, i32* @SEC_ALLOC, align 4
  %123 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %124 = or i32 %122, %123
  %125 = call i32* @bfd_make_section_with_flags(i32* %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %124)
  store i32* %125, i32** %9, align 8
  %126 = load i32*, i32** %9, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %120
  %129 = load i32, i32* @FALSE, align 4
  store i32 %129, i32* %3, align 4
  br label %165

130:                                              ; preds = %120
  %131 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %132 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %162, label %135

135:                                              ; preds = %130
  %136 = load i32*, i32** %4, align 8
  %137 = load %struct.elf_backend_data*, %struct.elf_backend_data** %10, align 8
  %138 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* @SEC_READONLY, align 4
  %145 = or i32 %143, %144
  %146 = call i32* @bfd_make_section_with_flags(i32* %136, i8* %142, i32 %145)
  store i32* %146, i32** %9, align 8
  %147 = load i32*, i32** %9, align 8
  %148 = icmp eq i32* %147, null
  br i1 %148, label %159, label %149

149:                                              ; preds = %135
  %150 = load i32*, i32** %4, align 8
  %151 = load i32*, i32** %9, align 8
  %152 = load %struct.elf_backend_data*, %struct.elf_backend_data** %10, align 8
  %153 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %152, i32 0, i32 1
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @bfd_set_section_alignment(i32* %150, i32* %151, i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %149, %135
  %160 = load i32, i32* @FALSE, align 4
  store i32 %160, i32* %3, align 4
  br label %165

161:                                              ; preds = %149
  br label %162

162:                                              ; preds = %161, %130
  br label %163

163:                                              ; preds = %162, %115
  %164 = load i32, i32* @TRUE, align 4
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %163, %159, %128, %113, %106, %79, %61
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(i32*) #1

declare dso_local i32* @bfd_make_section_with_flags(i32*, i8*, i32) #1

declare dso_local i32 @bfd_set_section_alignment(i32*, i32*, i32) #1

declare dso_local %struct.elf_link_hash_entry* @_bfd_elf_define_linkage_sym(i32*, %struct.bfd_link_info*, i32*, i8*) #1

declare dso_local %struct.TYPE_4__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @_bfd_elf_create_got_section(i32*, %struct.bfd_link_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
