; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_to_thumb_export_stub.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_to_thumb_export_stub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_25__, %struct.TYPE_22__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.bfd_link_info = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_21__*, i64, i32* }
%struct.TYPE_21__ = type { i64 }
%struct.elf32_arm_link_hash_entry = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, %struct.TYPE_16__* }
%struct.elf32_arm_link_hash_table = type { i32, i32* }

@TRUE = common dso_local global i32 0, align 4
@ARM2THUMB_GLUE_SECTION_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_link_hash_entry*, i8*)* @elf32_arm_to_thumb_export_stub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf32_arm_to_thumb_export_stub(%struct.elf_link_hash_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elf_link_hash_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.elf_link_hash_entry*, align 8
  %9 = alloca %struct.elf32_arm_link_hash_entry*, align 8
  %10 = alloca %struct.elf32_arm_link_hash_table*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.elf_link_hash_entry* %0, %struct.elf_link_hash_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.bfd_link_info*
  store %struct.bfd_link_info* %15, %struct.bfd_link_info** %6, align 8
  %16 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %17 = call %struct.elf32_arm_link_hash_entry* @elf32_arm_hash_entry(%struct.elf_link_hash_entry* %16)
  store %struct.elf32_arm_link_hash_entry* %17, %struct.elf32_arm_link_hash_entry** %9, align 8
  %18 = load %struct.elf32_arm_link_hash_entry*, %struct.elf32_arm_link_hash_entry** %9, align 8
  %19 = getelementptr inbounds %struct.elf32_arm_link_hash_entry, %struct.elf32_arm_link_hash_entry* %18, i32 0, i32 0
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %21 = icmp eq %struct.TYPE_20__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %3, align 4
  br label %126

24:                                               ; preds = %2
  %25 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %26 = call %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info* %25)
  store %struct.elf32_arm_link_hash_table* %26, %struct.elf32_arm_link_hash_table** %10, align 8
  %27 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %10, align 8
  %28 = icmp ne %struct.elf32_arm_link_hash_table* %27, null
  %29 = zext i1 %28 to i32
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to %struct.elf_link_hash_entry*
  %32 = call i32 @BFD_ASSERT(%struct.elf_link_hash_entry* %31)
  %33 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %10, align 8
  %34 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  %37 = zext i1 %36 to i32
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to %struct.elf_link_hash_entry*
  %40 = call i32 @BFD_ASSERT(%struct.elf_link_hash_entry* %39)
  %41 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %10, align 8
  %42 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* @ARM2THUMB_GLUE_SECTION_NAME, align 4
  %45 = call %struct.TYPE_16__* @bfd_get_section_by_name(i32* %43, i32 %44)
  store %struct.TYPE_16__* %45, %struct.TYPE_16__** %7, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %47 = icmp ne %struct.TYPE_16__* %46, null
  %48 = zext i1 %47 to i32
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to %struct.elf_link_hash_entry*
  %51 = call i32 @BFD_ASSERT(%struct.elf_link_hash_entry* %50)
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  %56 = zext i1 %55 to i32
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to %struct.elf_link_hash_entry*
  %59 = call i32 @BFD_ASSERT(%struct.elf_link_hash_entry* %58)
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %61, align 8
  %63 = icmp ne %struct.TYPE_21__* %62, null
  %64 = zext i1 %63 to i32
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to %struct.elf_link_hash_entry*
  %67 = call i32 @BFD_ASSERT(%struct.elf_link_hash_entry* %66)
  %68 = load %struct.elf32_arm_link_hash_entry*, %struct.elf32_arm_link_hash_entry** %9, align 8
  %69 = getelementptr inbounds %struct.elf32_arm_link_hash_entry, %struct.elf32_arm_link_hash_entry* %68, i32 0, i32 0
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %74, align 8
  store %struct.TYPE_16__* %75, %struct.TYPE_16__** %11, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %77, align 8
  %79 = icmp ne %struct.TYPE_21__* %78, null
  %80 = zext i1 %79 to i32
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to %struct.elf_link_hash_entry*
  %83 = call i32 @BFD_ASSERT(%struct.elf_link_hash_entry* %82)
  %84 = load %struct.elf32_arm_link_hash_entry*, %struct.elf32_arm_link_hash_entry** %9, align 8
  %85 = getelementptr inbounds %struct.elf32_arm_link_hash_entry, %struct.elf32_arm_link_hash_entry* %84, i32 0, i32 0
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %91, %94
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %95, %100
  store i64 %101, i64* %12, align 8
  %102 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %103 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %104 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %109 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %10, align 8
  %117 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %120 = load i64, i64* %12, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %122 = call %struct.elf_link_hash_entry* @elf32_arm_create_thumb_stub(%struct.bfd_link_info* %102, i32 %107, i32 %115, i32 %118, %struct.TYPE_16__* %119, i64 %120, %struct.TYPE_16__* %121, i8** %13)
  store %struct.elf_link_hash_entry* %122, %struct.elf_link_hash_entry** %8, align 8
  %123 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %124 = call i32 @BFD_ASSERT(%struct.elf_link_hash_entry* %123)
  %125 = load i32, i32* @TRUE, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %24, %22
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.elf32_arm_link_hash_entry* @elf32_arm_hash_entry(%struct.elf_link_hash_entry*) #1

declare dso_local %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @BFD_ASSERT(%struct.elf_link_hash_entry*) #1

declare dso_local %struct.TYPE_16__* @bfd_get_section_by_name(i32*, i32) #1

declare dso_local %struct.elf_link_hash_entry* @elf32_arm_create_thumb_stub(%struct.bfd_link_info*, i32, i32, i32, %struct.TYPE_16__*, i64, %struct.TYPE_16__*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
