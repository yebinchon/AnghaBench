; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_record_arm_to_thumb_glue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_record_arm_to_thumb_glue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i64 }
%struct.elf_link_hash_entry = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_9__ = type { i32 }
%struct.bfd_link_hash_entry = type { i32 }
%struct.elf32_arm_link_hash_table = type { i64, i64, i64, %struct.TYPE_10__, i32* }
%struct.TYPE_10__ = type { i64 }

@ARM2THUMB_GLUE_SECTION_NAME = common dso_local global i32 0, align 4
@ARM2THUMB_GLUE_ENTRY_NAME = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@BSF_GLOBAL = common dso_local global i32 0, align 4
@STB_LOCAL = common dso_local global i32 0, align 4
@STT_FUNC = common dso_local global i32 0, align 4
@ARM2THUMB_PIC_GLUE_SIZE = common dso_local global i64 0, align 8
@ARM2THUMB_V5_STATIC_GLUE_SIZE = common dso_local global i64 0, align 8
@ARM2THUMB_STATIC_GLUE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.elf_link_hash_entry* (%struct.bfd_link_info*, %struct.elf_link_hash_entry*)* @record_arm_to_thumb_glue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.elf_link_hash_entry* @record_arm_to_thumb_glue(%struct.bfd_link_info* %0, %struct.elf_link_hash_entry* %1) #0 {
  %3 = alloca %struct.elf_link_hash_entry*, align 8
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.elf_link_hash_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.elf_link_hash_entry*, align 8
  %10 = alloca %struct.bfd_link_hash_entry*, align 8
  %11 = alloca %struct.elf32_arm_link_hash_table*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %4, align 8
  store %struct.elf_link_hash_entry* %1, %struct.elf_link_hash_entry** %5, align 8
  %14 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %15 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %6, align 8
  %19 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %20 = call %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info* %19)
  store %struct.elf32_arm_link_hash_table* %20, %struct.elf32_arm_link_hash_table** %11, align 8
  %21 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %11, align 8
  %22 = icmp ne %struct.elf32_arm_link_hash_table* %21, null
  %23 = zext i1 %22 to i32
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @BFD_ASSERT(i8* %25)
  %27 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %11, align 8
  %28 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @BFD_ASSERT(i8* %33)
  %35 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %11, align 8
  %36 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @ARM2THUMB_GLUE_SECTION_NAME, align 4
  %39 = call %struct.TYPE_9__* @bfd_get_section_by_name(i32* %37, i32 %38)
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %7, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %41 = icmp ne %struct.TYPE_9__* %40, null
  %42 = zext i1 %41 to i32
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 @BFD_ASSERT(i8* %44)
  %46 = load i8*, i8** %6, align 8
  %47 = call i64 @strlen(i8* %46)
  %48 = load i8*, i8** @ARM2THUMB_GLUE_ENTRY_NAME, align 8
  %49 = call i64 @strlen(i8* %48)
  %50 = add nsw i64 %47, %49
  %51 = add nsw i64 %50, 1
  %52 = call i8* @bfd_malloc(i64 %51)
  store i8* %52, i8** %8, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @BFD_ASSERT(i8* %53)
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** @ARM2THUMB_GLUE_ENTRY_NAME, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @sprintf(i8* %55, i8* %56, i8* %57)
  %59 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %11, align 8
  %60 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %59, i32 0, i32 3
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* @FALSE, align 4
  %63 = load i32, i32* @FALSE, align 4
  %64 = load i32, i32* @TRUE, align 4
  %65 = call %struct.elf_link_hash_entry* @elf_link_hash_lookup(%struct.TYPE_10__* %60, i8* %61, i32 %62, i32 %63, i32 %64)
  store %struct.elf_link_hash_entry* %65, %struct.elf_link_hash_entry** %9, align 8
  %66 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %9, align 8
  %67 = icmp ne %struct.elf_link_hash_entry* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %2
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @free(i8* %69)
  %71 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %9, align 8
  store %struct.elf_link_hash_entry* %71, %struct.elf_link_hash_entry** %3, align 8
  br label %140

72:                                               ; preds = %2
  store %struct.bfd_link_hash_entry* null, %struct.bfd_link_hash_entry** %10, align 8
  %73 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %11, align 8
  %74 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %12, align 8
  %77 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %78 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %11, align 8
  %79 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = load i32, i32* @BSF_GLOBAL, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %84 = load i64, i64* %12, align 8
  %85 = load i32, i32* @TRUE, align 4
  %86 = load i32, i32* @FALSE, align 4
  %87 = call i32 @_bfd_generic_link_add_one_symbol(%struct.bfd_link_info* %77, i32* %80, i8* %81, i32 %82, %struct.TYPE_9__* %83, i64 %84, i32* null, i32 %85, i32 %86, %struct.bfd_link_hash_entry** %10)
  %88 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %10, align 8
  %89 = bitcast %struct.bfd_link_hash_entry* %88 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %89, %struct.elf_link_hash_entry** %9, align 8
  %90 = load i32, i32* @STB_LOCAL, align 4
  %91 = load i32, i32* @STT_FUNC, align 4
  %92 = call i32 @ELF_ST_INFO(i32 %90, i32 %91)
  %93 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %9, align 8
  %94 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %9, align 8
  %96 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 @free(i8* %97)
  %99 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %100 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %114, label %103

103:                                              ; preds = %72
  %104 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %11, align 8
  %105 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %103
  %110 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %11, align 8
  %111 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109, %103, %72
  %115 = load i64, i64* @ARM2THUMB_PIC_GLUE_SIZE, align 8
  store i64 %115, i64* %13, align 8
  br label %126

116:                                              ; preds = %109
  %117 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %11, align 8
  %118 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i64, i64* @ARM2THUMB_V5_STATIC_GLUE_SIZE, align 8
  store i64 %122, i64* %13, align 8
  br label %125

123:                                              ; preds = %116
  %124 = load i64, i64* @ARM2THUMB_STATIC_GLUE_SIZE, align 8
  store i64 %124, i64* %13, align 8
  br label %125

125:                                              ; preds = %123, %121
  br label %126

126:                                              ; preds = %125, %114
  %127 = load i64, i64* %13, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %131, %127
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %129, align 4
  %134 = load i64, i64* %13, align 8
  %135 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %11, align 8
  %136 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %137, %134
  store i64 %138, i64* %136, align 8
  %139 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %9, align 8
  store %struct.elf_link_hash_entry* %139, %struct.elf_link_hash_entry** %3, align 8
  br label %140

140:                                              ; preds = %126, %68
  %141 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %3, align 8
  ret %struct.elf_link_hash_entry* %141
}

declare dso_local %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @BFD_ASSERT(i8*) #1

declare dso_local %struct.TYPE_9__* @bfd_get_section_by_name(i32*, i32) #1

declare dso_local i8* @bfd_malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local %struct.elf_link_hash_entry* @elf_link_hash_lookup(%struct.TYPE_10__*, i8*, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @_bfd_generic_link_add_one_symbol(%struct.bfd_link_info*, i32*, i8*, i32, %struct.TYPE_9__*, i64, i32*, i32, i32, %struct.bfd_link_hash_entry**) #1

declare dso_local i32 @ELF_ST_INFO(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
