; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_create_got_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_create_got_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.elf_link_hash_entry = type { i32 }
%struct.elf_backend_data = type { i64, i64, i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.elf_link_hash_entry* }

@.str = private unnamed_addr constant [5 x i8] c".got\00", align 1
@SEC_LINKER_CREATED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@bfd_error_bad_value = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c".got.plt\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"_GLOBAL_OFFSET_TABLE_\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_elf_create_got_section(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.elf_link_hash_entry*, align 8
  %9 = alloca %struct.elf_backend_data*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call %struct.elf_backend_data* @get_elf_backend_data(i32* %11)
  store %struct.elf_backend_data* %12, %struct.elf_backend_data** %9, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call %struct.TYPE_9__* @bfd_get_section_by_name(i32* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %7, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %16 = icmp ne %struct.TYPE_9__* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %3, align 4
  br label %105

26:                                               ; preds = %17, %2
  %27 = load %struct.elf_backend_data*, %struct.elf_backend_data** %9, align 8
  %28 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %27, i32 0, i32 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %34 [
    i32 32, label %32
    i32 64, label %33
  ]

32:                                               ; preds = %26
  store i32 2, i32* %10, align 4
  br label %38

33:                                               ; preds = %26
  store i32 3, i32* %10, align 4
  br label %38

34:                                               ; preds = %26
  %35 = load i32, i32* @bfd_error_bad_value, align 4
  %36 = call i32 @bfd_set_error(i32 %35)
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %3, align 4
  br label %105

38:                                               ; preds = %33, %32
  %39 = load %struct.elf_backend_data*, %struct.elf_backend_data** %9, align 8
  %40 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %6, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call %struct.TYPE_9__* @bfd_make_section_with_flags(i32* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %43)
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %7, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %46 = icmp eq %struct.TYPE_9__* %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %38
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @bfd_set_section_alignment(i32* %48, %struct.TYPE_9__* %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %47, %38
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %3, align 4
  br label %105

55:                                               ; preds = %47
  %56 = load %struct.elf_backend_data*, %struct.elf_backend_data** %9, align 8
  %57 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call %struct.TYPE_9__* @bfd_make_section_with_flags(i32* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  store %struct.TYPE_9__* %63, %struct.TYPE_9__** %7, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %65 = icmp eq %struct.TYPE_9__* %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load i32*, i32** %4, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @bfd_set_section_alignment(i32* %67, %struct.TYPE_9__* %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %66, %60
  %73 = load i32, i32* @FALSE, align 4
  store i32 %73, i32* %3, align 4
  br label %105

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %55
  %76 = load %struct.elf_backend_data*, %struct.elf_backend_data** %9, align 8
  %77 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %75
  %81 = load i32*, i32** %4, align 8
  %82 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %84 = call %struct.elf_link_hash_entry* @_bfd_elf_define_linkage_sym(i32* %81, %struct.bfd_link_info* %82, %struct.TYPE_9__* %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store %struct.elf_link_hash_entry* %84, %struct.elf_link_hash_entry** %8, align 8
  %85 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %86 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %87 = call %struct.TYPE_10__* @elf_hash_table(%struct.bfd_link_info* %86)
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  store %struct.elf_link_hash_entry* %85, %struct.elf_link_hash_entry** %88, align 8
  %89 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %90 = icmp eq %struct.elf_link_hash_entry* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %80
  %92 = load i32, i32* @FALSE, align 4
  store i32 %92, i32* %3, align 4
  br label %105

93:                                               ; preds = %80
  br label %94

94:                                               ; preds = %93, %75
  %95 = load %struct.elf_backend_data*, %struct.elf_backend_data** %9, align 8
  %96 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %101, %97
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %99, align 4
  %104 = load i32, i32* @TRUE, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %94, %91, %72, %53, %34, %24
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(i32*) #1

declare dso_local %struct.TYPE_9__* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local %struct.TYPE_9__* @bfd_make_section_with_flags(i32*, i8*, i32) #1

declare dso_local i32 @bfd_set_section_alignment(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local %struct.elf_link_hash_entry* @_bfd_elf_define_linkage_sym(i32*, %struct.bfd_link_info*, %struct.TYPE_9__*, i8*) #1

declare dso_local %struct.TYPE_10__* @elf_hash_table(%struct.bfd_link_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
