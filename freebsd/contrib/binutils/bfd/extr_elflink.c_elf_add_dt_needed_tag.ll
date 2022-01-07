; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_add_dt_needed_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_add_dt_needed_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf_link_hash_table = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32* }
%struct.elf_backend_data = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (i32, i32*, %struct.TYPE_10__*)*, i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c".dynamic\00", align 1
@DT_NEEDED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*, i8*, i64)* @elf_add_dt_needed_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_add_dt_needed_tag(i32* %0, %struct.bfd_link_info* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bfd_link_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.elf_link_hash_table*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.elf_backend_data*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_10__, align 8
  store i32* %0, i32** %6, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %19 = call i32 @_bfd_elf_link_create_dynstrtab(i32* %17, %struct.bfd_link_info* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %136

22:                                               ; preds = %4
  %23 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %24 = call %struct.elf_link_hash_table* @elf_hash_table(%struct.bfd_link_info* %23)
  store %struct.elf_link_hash_table* %24, %struct.elf_link_hash_table** %10, align 8
  %25 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %10, align 8
  %26 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @_bfd_elf_strtab_size(i32 %27)
  store i64 %28, i64* %11, align 8
  %29 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %10, align 8
  %30 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* @FALSE, align 4
  %34 = call i64 @_bfd_elf_strtab_add(i32 %31, i8* %32, i32 %33)
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = icmp eq i64 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  store i32 -1, i32* %5, align 4
  br label %136

38:                                               ; preds = %22
  %39 = load i64, i64* %11, align 8
  %40 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %10, align 8
  %41 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @_bfd_elf_strtab_size(i32 %42)
  %44 = icmp eq i64 %39, %43
  br i1 %44, label %45, label %110

45:                                               ; preds = %38
  %46 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %10, align 8
  %47 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.elf_backend_data* @get_elf_backend_data(i32 %48)
  store %struct.elf_backend_data* %49, %struct.elf_backend_data** %14, align 8
  %50 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %10, align 8
  %51 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.TYPE_9__* @bfd_get_section_by_name(i32 %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_9__* %53, %struct.TYPE_9__** %13, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %55 = icmp ne %struct.TYPE_9__* %54, null
  br i1 %55, label %56, label %109

56:                                               ; preds = %45
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %15, align 8
  br label %60

60:                                               ; preds = %99, %56
  %61 = load i32*, i32** %15, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = icmp ult i32* %61, %69
  br i1 %70, label %71, label %108

71:                                               ; preds = %60
  %72 = load %struct.elf_backend_data*, %struct.elf_backend_data** %14, align 8
  %73 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %72, i32 0, i32 0
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32 (i32, i32*, %struct.TYPE_10__*)*, i32 (i32, i32*, %struct.TYPE_10__*)** %75, align 8
  %77 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %10, align 8
  %78 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %15, align 8
  %81 = call i32 %76(i32 %79, i32* %80, %struct.TYPE_10__* %16)
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @DT_NEEDED, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %71
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %12, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %10, align 8
  %94 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i64, i64* %12, align 8
  %97 = call i32 @_bfd_elf_strtab_delref(i32 %95, i64 %96)
  store i32 1, i32* %5, align 4
  br label %136

98:                                               ; preds = %86, %71
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.elf_backend_data*, %struct.elf_backend_data** %14, align 8
  %101 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %100, i32 0, i32 0
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32*, i32** %15, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32* %107, i32** %15, align 8
  br label %60

108:                                              ; preds = %60
  br label %109

109:                                              ; preds = %108, %45
  br label %110

110:                                              ; preds = %109, %38
  %111 = load i64, i64* %9, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %110
  %114 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %10, align 8
  %115 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %118 = call i32 @_bfd_elf_link_create_dynamic_sections(i32 %116, %struct.bfd_link_info* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %113
  store i32 -1, i32* %5, align 4
  br label %136

121:                                              ; preds = %113
  %122 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %123 = load i64, i64* @DT_NEEDED, align 8
  %124 = load i64, i64* %12, align 8
  %125 = call i32 @_bfd_elf_add_dynamic_entry(%struct.bfd_link_info* %122, i64 %123, i64 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %121
  store i32 -1, i32* %5, align 4
  br label %136

128:                                              ; preds = %121
  br label %135

129:                                              ; preds = %110
  %130 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %10, align 8
  %131 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i64, i64* %12, align 8
  %134 = call i32 @_bfd_elf_strtab_delref(i32 %132, i64 %133)
  br label %135

135:                                              ; preds = %129, %128
  store i32 0, i32* %5, align 4
  br label %136

136:                                              ; preds = %135, %127, %120, %92, %37, %21
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i32 @_bfd_elf_link_create_dynstrtab(i32*, %struct.bfd_link_info*) #1

declare dso_local %struct.elf_link_hash_table* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i64 @_bfd_elf_strtab_size(i32) #1

declare dso_local i64 @_bfd_elf_strtab_add(i32, i8*, i32) #1

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(i32) #1

declare dso_local %struct.TYPE_9__* @bfd_get_section_by_name(i32, i8*) #1

declare dso_local i32 @_bfd_elf_strtab_delref(i32, i64) #1

declare dso_local i32 @_bfd_elf_link_create_dynamic_sections(i32, %struct.bfd_link_info*) #1

declare dso_local i32 @_bfd_elf_add_dynamic_entry(%struct.bfd_link_info*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
