; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_record_thumb_to_arm_glue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_record_thumb_to_arm_glue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf_link_hash_entry = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_8__ = type { i32 }
%struct.bfd_link_hash_entry = type { i32 }
%struct.elf32_arm_link_hash_table = type { i64, i32*, i32 }

@THUMB2ARM_GLUE_SECTION_NAME = common dso_local global i32 0, align 4
@THUMB2ARM_GLUE_ENTRY_NAME = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@BSF_GLOBAL = common dso_local global i32 0, align 4
@STB_LOCAL = common dso_local global i32 0, align 4
@STT_ARM_TFUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"__%s_change_to_arm\00", align 1
@BSF_LOCAL = common dso_local global i32 0, align 4
@THUMB2ARM_GLUE_SIZE = common dso_local global i64 0, align 8
@CHANGE_TO_ARM = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfd_link_info*, %struct.elf_link_hash_entry*)* @record_thumb_to_arm_glue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_thumb_to_arm_glue(%struct.bfd_link_info* %0, %struct.elf_link_hash_entry* %1) #0 {
  %3 = alloca %struct.bfd_link_info*, align 8
  %4 = alloca %struct.elf_link_hash_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.elf_link_hash_entry*, align 8
  %9 = alloca %struct.bfd_link_hash_entry*, align 8
  %10 = alloca %struct.elf32_arm_link_hash_table*, align 8
  %11 = alloca i64, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %3, align 8
  store %struct.elf_link_hash_entry* %1, %struct.elf_link_hash_entry** %4, align 8
  %12 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %13 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %5, align 8
  %17 = load %struct.bfd_link_info*, %struct.bfd_link_info** %3, align 8
  %18 = call %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info* %17)
  store %struct.elf32_arm_link_hash_table* %18, %struct.elf32_arm_link_hash_table** %10, align 8
  %19 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %10, align 8
  %20 = icmp ne %struct.elf32_arm_link_hash_table* %19, null
  %21 = zext i1 %20 to i32
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @BFD_ASSERT(i8* %23)
  %25 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %10, align 8
  %26 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  %29 = zext i1 %28 to i32
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @BFD_ASSERT(i8* %31)
  %33 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %10, align 8
  %34 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* @THUMB2ARM_GLUE_SECTION_NAME, align 4
  %37 = call %struct.TYPE_8__* @bfd_get_section_by_name(i32* %35, i32 %36)
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %6, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = icmp ne %struct.TYPE_8__* %38, null
  %40 = zext i1 %39 to i32
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @BFD_ASSERT(i8* %42)
  %44 = load i8*, i8** %5, align 8
  %45 = call i64 @strlen(i8* %44)
  %46 = load i8*, i8** @THUMB2ARM_GLUE_ENTRY_NAME, align 8
  %47 = call i64 @strlen(i8* %46)
  %48 = add nsw i64 %45, %47
  %49 = add nsw i64 %48, 1
  %50 = call i8* @bfd_malloc(i64 %49)
  store i8* %50, i8** %7, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @BFD_ASSERT(i8* %51)
  %53 = load i8*, i8** %7, align 8
  %54 = load i8*, i8** @THUMB2ARM_GLUE_ENTRY_NAME, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @sprintf(i8* %53, i8* %54, i8* %55)
  %57 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %10, align 8
  %58 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %57, i32 0, i32 2
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* @FALSE, align 4
  %61 = load i32, i32* @FALSE, align 4
  %62 = load i32, i32* @TRUE, align 4
  %63 = call %struct.elf_link_hash_entry* @elf_link_hash_lookup(i32* %58, i8* %59, i32 %60, i32 %61, i32 %62)
  store %struct.elf_link_hash_entry* %63, %struct.elf_link_hash_entry** %8, align 8
  %64 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %65 = icmp ne %struct.elf_link_hash_entry* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %2
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @free(i8* %67)
  br label %136

69:                                               ; preds = %2
  store %struct.bfd_link_hash_entry* null, %struct.bfd_link_hash_entry** %9, align 8
  %70 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %10, align 8
  %71 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %11, align 8
  %74 = load %struct.bfd_link_info*, %struct.bfd_link_info** %3, align 8
  %75 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %10, align 8
  %76 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = load i32, i32* @BSF_GLOBAL, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load i32, i32* @TRUE, align 4
  %83 = load i32, i32* @FALSE, align 4
  %84 = call i32 @_bfd_generic_link_add_one_symbol(%struct.bfd_link_info* %74, i32* %77, i8* %78, i32 %79, %struct.TYPE_8__* %80, i64 %81, i32* null, i32 %82, i32 %83, %struct.bfd_link_hash_entry** %9)
  %85 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %9, align 8
  %86 = bitcast %struct.bfd_link_hash_entry* %85 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %86, %struct.elf_link_hash_entry** %8, align 8
  %87 = load i32, i32* @STB_LOCAL, align 4
  %88 = load i32, i32* @STT_ARM_TFUNC, align 4
  %89 = call i32 @ELF_ST_INFO(i32 %87, i32 %88)
  %90 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %91 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %93 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = call i32 @free(i8* %94)
  %96 = load i8*, i8** %5, align 8
  %97 = call i64 @strlen(i8* %96)
  %98 = call i64 @strlen(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %99 = add nsw i64 %97, %98
  %100 = add nsw i64 %99, 1
  %101 = call i8* @bfd_malloc(i64 %100)
  store i8* %101, i8** %7, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = call i32 @BFD_ASSERT(i8* %102)
  %104 = load i8*, i8** %7, align 8
  %105 = load i8*, i8** %5, align 8
  %106 = call i32 @sprintf(i8* %104, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %105)
  store %struct.bfd_link_hash_entry* null, %struct.bfd_link_hash_entry** %9, align 8
  %107 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %10, align 8
  %108 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, 4
  store i64 %110, i64* %11, align 8
  %111 = load %struct.bfd_link_info*, %struct.bfd_link_info** %3, align 8
  %112 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %10, align 8
  %113 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = load i32, i32* @BSF_LOCAL, align 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %118 = load i64, i64* %11, align 8
  %119 = load i32, i32* @TRUE, align 4
  %120 = load i32, i32* @FALSE, align 4
  %121 = call i32 @_bfd_generic_link_add_one_symbol(%struct.bfd_link_info* %111, i32* %114, i8* %115, i32 %116, %struct.TYPE_8__* %117, i64 %118, i32* null, i32 %119, i32 %120, %struct.bfd_link_hash_entry** %9)
  %122 = load i8*, i8** %7, align 8
  %123 = call i32 @free(i8* %122)
  %124 = load i64, i64* @THUMB2ARM_GLUE_SIZE, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %128, %124
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %126, align 4
  %131 = load i64, i64* @THUMB2ARM_GLUE_SIZE, align 8
  %132 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %10, align 8
  %133 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, %131
  store i64 %135, i64* %133, align 8
  br label %136

136:                                              ; preds = %69, %66
  ret void
}

declare dso_local %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @BFD_ASSERT(i8*) #1

declare dso_local %struct.TYPE_8__* @bfd_get_section_by_name(i32*, i32) #1

declare dso_local i8* @bfd_malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local %struct.elf_link_hash_entry* @elf_link_hash_lookup(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @_bfd_generic_link_add_one_symbol(%struct.bfd_link_info*, i32*, i8*, i32, %struct.TYPE_8__*, i64, i32*, i32, i32, %struct.bfd_link_hash_entry**) #1

declare dso_local i32 @ELF_ST_INFO(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
