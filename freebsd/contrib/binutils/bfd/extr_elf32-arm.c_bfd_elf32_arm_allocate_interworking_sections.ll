; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_bfd_elf32_arm_allocate_interworking_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_bfd_elf32_arm_allocate_interworking_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.TYPE_3__ = type { i64, i32* }
%struct.elf32_arm_link_hash_table = type { i64, i64, i64, i32* }

@ARM2THUMB_GLUE_SECTION_NAME = common dso_local global i32 0, align 4
@THUMB2ARM_GLUE_SECTION_NAME = common dso_local global i32 0, align 4
@VFP11_ERRATUM_VENEER_SECTION_NAME = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_elf32_arm_allocate_interworking_sections(%struct.bfd_link_info* %0) #0 {
  %2 = alloca %struct.bfd_link_info*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.elf32_arm_link_hash_table*, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %2, align 8
  %6 = load %struct.bfd_link_info*, %struct.bfd_link_info** %2, align 8
  %7 = call %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info* %6)
  store %struct.elf32_arm_link_hash_table* %7, %struct.elf32_arm_link_hash_table** %5, align 8
  %8 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %5, align 8
  %9 = icmp ne %struct.elf32_arm_link_hash_table* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @BFD_ASSERT(i32 %10)
  %12 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %5, align 8
  %13 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %51

16:                                               ; preds = %1
  %17 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %5, align 8
  %18 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @BFD_ASSERT(i32 %21)
  %23 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %5, align 8
  %24 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @ARM2THUMB_GLUE_SECTION_NAME, align 4
  %27 = call %struct.TYPE_3__* @bfd_get_section_by_name(i32* %25, i32 %26)
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** %3, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @BFD_ASSERT(i32 %30)
  %32 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %5, align 8
  %33 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %5, align 8
  %36 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32* @bfd_alloc(i32* %34, i64 %37)
  store i32* %38, i32** %4, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %5, align 8
  %43 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @BFD_ASSERT(i32 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i32* %48, i32** %50, align 8
  br label %51

51:                                               ; preds = %16, %1
  %52 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %5, align 8
  %53 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %91

56:                                               ; preds = %51
  %57 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %5, align 8
  %58 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i32 @BFD_ASSERT(i32 %61)
  %63 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %5, align 8
  %64 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* @THUMB2ARM_GLUE_SECTION_NAME, align 4
  %67 = call %struct.TYPE_3__* @bfd_get_section_by_name(i32* %65, i32 %66)
  store %struct.TYPE_3__* %67, %struct.TYPE_3__** %3, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %69 = icmp ne %struct.TYPE_3__* %68, null
  %70 = zext i1 %69 to i32
  %71 = call i32 @BFD_ASSERT(i32 %70)
  %72 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %5, align 8
  %73 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %5, align 8
  %76 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32* @bfd_alloc(i32* %74, i64 %77)
  store i32* %78, i32** %4, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %5, align 8
  %83 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %81, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @BFD_ASSERT(i32 %86)
  %88 = load i32*, i32** %4, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  store i32* %88, i32** %90, align 8
  br label %91

91:                                               ; preds = %56, %51
  %92 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %5, align 8
  %93 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %131

96:                                               ; preds = %91
  %97 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %5, align 8
  %98 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  %101 = zext i1 %100 to i32
  %102 = call i32 @BFD_ASSERT(i32 %101)
  %103 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %5, align 8
  %104 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* @VFP11_ERRATUM_VENEER_SECTION_NAME, align 4
  %107 = call %struct.TYPE_3__* @bfd_get_section_by_name(i32* %105, i32 %106)
  store %struct.TYPE_3__* %107, %struct.TYPE_3__** %3, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %109 = icmp ne %struct.TYPE_3__* %108, null
  %110 = zext i1 %109 to i32
  %111 = call i32 @BFD_ASSERT(i32 %110)
  %112 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %5, align 8
  %113 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %5, align 8
  %116 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = call i32* @bfd_alloc(i32* %114, i64 %117)
  store i32* %118, i32** %4, align 8
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %5, align 8
  %123 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %121, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @BFD_ASSERT(i32 %126)
  %128 = load i32*, i32** %4, align 8
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  store i32* %128, i32** %130, align 8
  br label %131

131:                                              ; preds = %96, %91
  %132 = load i32, i32* @TRUE, align 4
  ret i32 %132
}

declare dso_local %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local %struct.TYPE_3__* @bfd_get_section_by_name(i32*, i32) #1

declare dso_local i32* @bfd_alloc(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
