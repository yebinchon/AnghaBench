; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coff-arm.c_bfd_arm_allocate_interworking_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coff-arm.c_bfd_arm_allocate_interworking_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.TYPE_3__ = type { i64, i32* }
%struct.coff_arm_link_hash_table = type { i64, i64, i32* }

@ARM2THUMB_GLUE_SECTION_NAME = common dso_local global i32 0, align 4
@THUMB2ARM_GLUE_SECTION_NAME = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_arm_allocate_interworking_sections(%struct.bfd_link_info* %0) #0 {
  %2 = alloca %struct.bfd_link_info*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.coff_arm_link_hash_table*, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %2, align 8
  %6 = load %struct.bfd_link_info*, %struct.bfd_link_info** %2, align 8
  %7 = call %struct.coff_arm_link_hash_table* @coff_arm_hash_table(%struct.bfd_link_info* %6)
  store %struct.coff_arm_link_hash_table* %7, %struct.coff_arm_link_hash_table** %5, align 8
  %8 = load %struct.coff_arm_link_hash_table*, %struct.coff_arm_link_hash_table** %5, align 8
  %9 = icmp ne %struct.coff_arm_link_hash_table* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @BFD_ASSERT(i32 %10)
  %12 = load %struct.coff_arm_link_hash_table*, %struct.coff_arm_link_hash_table** %5, align 8
  %13 = getelementptr inbounds %struct.coff_arm_link_hash_table, %struct.coff_arm_link_hash_table* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %1
  %17 = load %struct.coff_arm_link_hash_table*, %struct.coff_arm_link_hash_table** %5, align 8
  %18 = getelementptr inbounds %struct.coff_arm_link_hash_table, %struct.coff_arm_link_hash_table* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @BFD_ASSERT(i32 %21)
  %23 = load %struct.coff_arm_link_hash_table*, %struct.coff_arm_link_hash_table** %5, align 8
  %24 = getelementptr inbounds %struct.coff_arm_link_hash_table, %struct.coff_arm_link_hash_table* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @ARM2THUMB_GLUE_SECTION_NAME, align 4
  %27 = call %struct.TYPE_3__* @bfd_get_section_by_name(i32* %25, i32 %26)
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** %3, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @BFD_ASSERT(i32 %30)
  %32 = load %struct.coff_arm_link_hash_table*, %struct.coff_arm_link_hash_table** %5, align 8
  %33 = getelementptr inbounds %struct.coff_arm_link_hash_table, %struct.coff_arm_link_hash_table* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.coff_arm_link_hash_table*, %struct.coff_arm_link_hash_table** %5, align 8
  %36 = getelementptr inbounds %struct.coff_arm_link_hash_table, %struct.coff_arm_link_hash_table* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32* @bfd_alloc(i32* %34, i64 %37)
  store i32* %38, i32** %4, align 8
  %39 = load %struct.coff_arm_link_hash_table*, %struct.coff_arm_link_hash_table** %5, align 8
  %40 = getelementptr inbounds %struct.coff_arm_link_hash_table, %struct.coff_arm_link_hash_table* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i32* %44, i32** %46, align 8
  br label %47

47:                                               ; preds = %16, %1
  %48 = load %struct.coff_arm_link_hash_table*, %struct.coff_arm_link_hash_table** %5, align 8
  %49 = getelementptr inbounds %struct.coff_arm_link_hash_table, %struct.coff_arm_link_hash_table* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %83

52:                                               ; preds = %47
  %53 = load %struct.coff_arm_link_hash_table*, %struct.coff_arm_link_hash_table** %5, align 8
  %54 = getelementptr inbounds %struct.coff_arm_link_hash_table, %struct.coff_arm_link_hash_table* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @BFD_ASSERT(i32 %57)
  %59 = load %struct.coff_arm_link_hash_table*, %struct.coff_arm_link_hash_table** %5, align 8
  %60 = getelementptr inbounds %struct.coff_arm_link_hash_table, %struct.coff_arm_link_hash_table* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* @THUMB2ARM_GLUE_SECTION_NAME, align 4
  %63 = call %struct.TYPE_3__* @bfd_get_section_by_name(i32* %61, i32 %62)
  store %struct.TYPE_3__* %63, %struct.TYPE_3__** %3, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = icmp ne %struct.TYPE_3__* %64, null
  %66 = zext i1 %65 to i32
  %67 = call i32 @BFD_ASSERT(i32 %66)
  %68 = load %struct.coff_arm_link_hash_table*, %struct.coff_arm_link_hash_table** %5, align 8
  %69 = getelementptr inbounds %struct.coff_arm_link_hash_table, %struct.coff_arm_link_hash_table* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.coff_arm_link_hash_table*, %struct.coff_arm_link_hash_table** %5, align 8
  %72 = getelementptr inbounds %struct.coff_arm_link_hash_table, %struct.coff_arm_link_hash_table* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32* @bfd_alloc(i32* %70, i64 %73)
  store i32* %74, i32** %4, align 8
  %75 = load %struct.coff_arm_link_hash_table*, %struct.coff_arm_link_hash_table** %5, align 8
  %76 = getelementptr inbounds %struct.coff_arm_link_hash_table, %struct.coff_arm_link_hash_table* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  store i32* %80, i32** %82, align 8
  br label %83

83:                                               ; preds = %52, %47
  %84 = load i32, i32* @TRUE, align 4
  ret i32 %84
}

declare dso_local %struct.coff_arm_link_hash_table* @coff_arm_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local %struct.TYPE_3__* @bfd_get_section_by_name(i32*, i32) #1

declare dso_local i32* @bfd_alloc(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
