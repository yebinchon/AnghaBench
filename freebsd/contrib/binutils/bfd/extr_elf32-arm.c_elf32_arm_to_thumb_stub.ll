; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_to_thumb_stub.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_to_thumb_stub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__*, i32* }
%struct.TYPE_14__ = type { i32 }
%struct.elf_link_hash_entry = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.elf32_arm_link_hash_table = type { i32* }

@ARM2THUMB_GLUE_SECTION_NAME = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfd_link_info*, i8*, i32*, i32*, %struct.TYPE_15__*, i32*, %struct.TYPE_15__*, i32, i32, i32, i8**)* @elf32_arm_to_thumb_stub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf32_arm_to_thumb_stub(%struct.bfd_link_info* %0, i8* %1, i32* %2, i32* %3, %struct.TYPE_15__* %4, i32* %5, %struct.TYPE_15__* %6, i32 %7, i32 %8, i32 %9, i8** %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.bfd_link_info*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_15__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8**, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_15__*, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.elf_link_hash_entry*, align 8
  %29 = alloca %struct.elf32_arm_link_hash_table*, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %13, align 8
  store i8* %1, i8** %14, align 8
  store i32* %2, i32** %15, align 8
  store i32* %3, i32** %16, align 8
  store %struct.TYPE_15__* %4, %struct.TYPE_15__** %17, align 8
  store i32* %5, i32** %18, align 8
  store %struct.TYPE_15__* %6, %struct.TYPE_15__** %19, align 8
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i8** %10, i8*** %23, align 8
  %30 = load %struct.bfd_link_info*, %struct.bfd_link_info** %13, align 8
  %31 = call %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info* %30)
  store %struct.elf32_arm_link_hash_table* %31, %struct.elf32_arm_link_hash_table** %29, align 8
  %32 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %29, align 8
  %33 = icmp ne %struct.elf32_arm_link_hash_table* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @BFD_ASSERT(i32 %34)
  %36 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %29, align 8
  %37 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @BFD_ASSERT(i32 %40)
  %42 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %29, align 8
  %43 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @ARM2THUMB_GLUE_SECTION_NAME, align 4
  %46 = call %struct.TYPE_15__* @bfd_get_section_by_name(i32* %44, i32 %45)
  store %struct.TYPE_15__* %46, %struct.TYPE_15__** %26, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %48 = icmp ne %struct.TYPE_15__* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @BFD_ASSERT(i32 %49)
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  %55 = zext i1 %54 to i32
  %56 = call i32 @BFD_ASSERT(i32 %55)
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = icmp ne %struct.TYPE_14__* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i32 @BFD_ASSERT(i32 %61)
  %63 = load %struct.bfd_link_info*, %struct.bfd_link_info** %13, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = load i32*, i32** %15, align 8
  %66 = load i32*, i32** %16, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %68 = load i32, i32* %22, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %70 = load i8**, i8*** %23, align 8
  %71 = call %struct.elf_link_hash_entry* @elf32_arm_create_thumb_stub(%struct.bfd_link_info* %63, i8* %64, i32* %65, i32* %66, %struct.TYPE_15__* %67, i32 %68, %struct.TYPE_15__* %69, i8** %70)
  store %struct.elf_link_hash_entry* %71, %struct.elf_link_hash_entry** %28, align 8
  %72 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %28, align 8
  %73 = icmp ne %struct.elf_link_hash_entry* %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %11
  %75 = load i32, i32* @FALSE, align 4
  store i32 %75, i32* %12, align 4
  br label %132

76:                                               ; preds = %11
  %77 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %28, align 8
  %78 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %25, align 4
  %83 = load i32*, i32** %15, align 8
  %84 = load i32*, i32** %18, align 8
  %85 = call i64 @bfd_get_32(i32* %83, i32* %84)
  store i64 %85, i64* %24, align 8
  %86 = load i64, i64* %24, align 8
  %87 = and i64 %86, 4278190080
  store i64 %87, i64* %24, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %25, align 4
  %92 = add nsw i32 %90, %91
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %92, %97
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %101, %106
  %108 = load i32, i32* %20, align 4
  %109 = add nsw i32 %107, %108
  %110 = load i32, i32* %21, align 4
  %111 = add nsw i32 %109, %110
  %112 = sub nsw i32 %98, %111
  %113 = sub nsw i32 %112, 8
  %114 = sext i32 %113 to i64
  store i64 %114, i64* %27, align 8
  %115 = load i64, i64* %24, align 8
  %116 = load i64, i64* %27, align 8
  %117 = ashr i64 %116, 2
  %118 = and i64 %117, 16777215
  %119 = or i64 %115, %118
  store i64 %119, i64* %24, align 8
  %120 = load i32*, i32** %16, align 8
  %121 = load i64, i64* %24, align 8
  %122 = trunc i64 %121 to i32
  %123 = load i32*, i32** %18, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = sub i64 0, %127
  %129 = getelementptr inbounds i32, i32* %123, i64 %128
  %130 = call i32 @bfd_put_32(i32* %120, i32 %122, i32* %129)
  %131 = load i32, i32* @TRUE, align 4
  store i32 %131, i32* %12, align 4
  br label %132

132:                                              ; preds = %76, %74
  %133 = load i32, i32* %12, align 4
  ret i32 %133
}

declare dso_local %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local %struct.TYPE_15__* @bfd_get_section_by_name(i32*, i32) #1

declare dso_local %struct.elf_link_hash_entry* @elf32_arm_create_thumb_stub(%struct.bfd_link_info*, i8*, i32*, i32*, %struct.TYPE_15__*, i32, %struct.TYPE_15__*, i8**) #1

declare dso_local i64 @bfd_get_32(i32*, i32*) #1

declare dso_local i32 @bfd_put_32(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
