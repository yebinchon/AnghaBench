; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coff-arm.c_record_arm_to_thumb_glue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coff-arm.c_record_arm_to_thumb_glue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.coff_link_hash_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.bfd_link_hash_entry = type { i32 }
%struct.coff_arm_link_hash_table = type { i64, i32* }

@ARM2THUMB_GLUE_SECTION_NAME = common dso_local global i32 0, align 4
@ARM2THUMB_GLUE_ENTRY_NAME = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@BSF_GLOBAL = common dso_local global i32 0, align 4
@ARM2THUMB_GLUE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfd_link_info*, %struct.coff_link_hash_entry*)* @record_arm_to_thumb_glue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_arm_to_thumb_glue(%struct.bfd_link_info* %0, %struct.coff_link_hash_entry* %1) #0 {
  %3 = alloca %struct.bfd_link_info*, align 8
  %4 = alloca %struct.coff_link_hash_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.coff_link_hash_entry*, align 8
  %9 = alloca %struct.bfd_link_hash_entry*, align 8
  %10 = alloca %struct.coff_arm_link_hash_table*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %3, align 8
  store %struct.coff_link_hash_entry* %1, %struct.coff_link_hash_entry** %4, align 8
  %13 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %4, align 8
  %14 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %5, align 8
  %18 = load %struct.bfd_link_info*, %struct.bfd_link_info** %3, align 8
  %19 = call %struct.coff_arm_link_hash_table* @coff_arm_hash_table(%struct.bfd_link_info* %18)
  store %struct.coff_arm_link_hash_table* %19, %struct.coff_arm_link_hash_table** %10, align 8
  %20 = load %struct.coff_arm_link_hash_table*, %struct.coff_arm_link_hash_table** %10, align 8
  %21 = icmp ne %struct.coff_arm_link_hash_table* %20, null
  %22 = zext i1 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @BFD_ASSERT(i8* %24)
  %26 = load %struct.coff_arm_link_hash_table*, %struct.coff_arm_link_hash_table** %10, align 8
  %27 = getelementptr inbounds %struct.coff_arm_link_hash_table, %struct.coff_arm_link_hash_table* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @BFD_ASSERT(i8* %32)
  %34 = load %struct.coff_arm_link_hash_table*, %struct.coff_arm_link_hash_table** %10, align 8
  %35 = getelementptr inbounds %struct.coff_arm_link_hash_table, %struct.coff_arm_link_hash_table* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @ARM2THUMB_GLUE_SECTION_NAME, align 4
  %38 = call i32* @bfd_get_section_by_name(i32* %36, i32 %37)
  store i32* %38, i32** %6, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = icmp ne i32* %39, null
  %41 = zext i1 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @BFD_ASSERT(i8* %43)
  %45 = load i8*, i8** %5, align 8
  %46 = call i64 @strlen(i8* %45)
  %47 = load i8*, i8** @ARM2THUMB_GLUE_ENTRY_NAME, align 8
  %48 = call i64 @strlen(i8* %47)
  %49 = add nsw i64 %46, %48
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %12, align 8
  %51 = load i64, i64* %12, align 8
  %52 = call i8* @bfd_malloc(i64 %51)
  store i8* %52, i8** %7, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @BFD_ASSERT(i8* %53)
  %55 = load i8*, i8** %7, align 8
  %56 = load i8*, i8** @ARM2THUMB_GLUE_ENTRY_NAME, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @sprintf(i8* %55, i8* %56, i8* %57)
  %59 = load %struct.bfd_link_info*, %struct.bfd_link_info** %3, align 8
  %60 = call i32 @coff_hash_table(%struct.bfd_link_info* %59)
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* @FALSE, align 4
  %63 = load i32, i32* @FALSE, align 4
  %64 = load i32, i32* @TRUE, align 4
  %65 = call %struct.coff_link_hash_entry* @coff_link_hash_lookup(i32 %60, i8* %61, i32 %62, i32 %63, i32 %64)
  store %struct.coff_link_hash_entry* %65, %struct.coff_link_hash_entry** %8, align 8
  %66 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %8, align 8
  %67 = icmp ne %struct.coff_link_hash_entry* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %2
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @free(i8* %69)
  br label %94

71:                                               ; preds = %2
  store %struct.bfd_link_hash_entry* null, %struct.bfd_link_hash_entry** %9, align 8
  %72 = load %struct.coff_arm_link_hash_table*, %struct.coff_arm_link_hash_table** %10, align 8
  %73 = getelementptr inbounds %struct.coff_arm_link_hash_table, %struct.coff_arm_link_hash_table* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %11, align 8
  %76 = load %struct.bfd_link_info*, %struct.bfd_link_info** %3, align 8
  %77 = load %struct.coff_arm_link_hash_table*, %struct.coff_arm_link_hash_table** %10, align 8
  %78 = getelementptr inbounds %struct.coff_arm_link_hash_table, %struct.coff_arm_link_hash_table* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = load i32, i32* @BSF_GLOBAL, align 4
  %82 = load i32*, i32** %6, align 8
  %83 = load i64, i64* %11, align 8
  %84 = load i32, i32* @TRUE, align 4
  %85 = load i32, i32* @FALSE, align 4
  %86 = call i32 @bfd_coff_link_add_one_symbol(%struct.bfd_link_info* %76, i32* %79, i8* %80, i32 %81, i32* %82, i64 %83, i32* null, i32 %84, i32 %85, %struct.bfd_link_hash_entry** %9)
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 @free(i8* %87)
  %89 = load i64, i64* @ARM2THUMB_GLUE_SIZE, align 8
  %90 = load %struct.coff_arm_link_hash_table*, %struct.coff_arm_link_hash_table** %10, align 8
  %91 = getelementptr inbounds %struct.coff_arm_link_hash_table, %struct.coff_arm_link_hash_table* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, %89
  store i64 %93, i64* %91, align 8
  br label %94

94:                                               ; preds = %71, %68
  ret void
}

declare dso_local %struct.coff_arm_link_hash_table* @coff_arm_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @BFD_ASSERT(i8*) #1

declare dso_local i32* @bfd_get_section_by_name(i32*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @bfd_malloc(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local %struct.coff_link_hash_entry* @coff_link_hash_lookup(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @coff_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @bfd_coff_link_add_one_symbol(%struct.bfd_link_info*, i32*, i8*, i32, i32*, i64, i32*, i32, i32, %struct.bfd_link_hash_entry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
