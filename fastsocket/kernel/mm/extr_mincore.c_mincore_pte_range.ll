; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mincore.c_mincore_pte_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mincore.c_mincore_pte_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@swapper_space = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*, i32*, i64, i64, i8*)* @mincore_pte_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mincore_pte_range(%struct.vm_area_struct* %0, i32* %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_6__, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i32* @pte_offset_map_lock(i32 %19, i32* %20, i64 %21, i32** %12)
  store i32* %22, i32** %13, align 8
  br label %23

23:                                               ; preds = %78, %5
  %24 = load i32*, i32** %13, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %14, align 4
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @PAGE_SIZE, align 8
  %28 = add i64 %26, %27
  store i64 %28, i64* %11, align 8
  %29 = load i32, i32* %14, align 4
  %30 = call i64 @pte_none(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @mincore_unmapped_range(%struct.vm_area_struct* %33, i64 %34, i64 %35, i8* %36)
  br label %75

38:                                               ; preds = %23
  %39 = load i32, i32* %14, align 4
  %40 = call i64 @pte_present(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i8*, i8** %10, align 8
  store i8 1, i8* %43, align 1
  br label %74

44:                                               ; preds = %38
  %45 = load i32, i32* %14, align 4
  %46 = call i64 @pte_file(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @pte_to_pgoff(i32 %49)
  store i32 %50, i32* %15, align 4
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %52 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %15, align 4
  %57 = call zeroext i8 @mincore_page(i32* %55, i32 %56)
  %58 = load i8*, i8** %10, align 8
  store i8 %57, i8* %58, align 1
  br label %73

59:                                               ; preds = %44
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @pte_to_swp_entry(i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @is_migration_entry(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i8*, i8** %10, align 8
  store i8 1, i8* %68, align 1
  br label %72

69:                                               ; preds = %59
  %70 = call i32 @WARN_ON(i32 1)
  %71 = load i8*, i8** %10, align 8
  store i8 1, i8* %71, align 1
  br label %72

72:                                               ; preds = %69, %67
  br label %73

73:                                               ; preds = %72, %48
  br label %74

74:                                               ; preds = %73, %42
  br label %75

75:                                               ; preds = %74, %32
  %76 = load i8*, i8** %10, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %10, align 8
  br label %78

78:                                               ; preds = %75
  %79 = load i32*, i32** %13, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %13, align 8
  %81 = load i64, i64* %11, align 8
  store i64 %81, i64* %8, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %9, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %23, label %85

85:                                               ; preds = %78
  %86 = load i32*, i32** %13, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 -1
  %88 = load i32*, i32** %12, align 8
  %89 = call i32 @pte_unmap_unlock(i32* %87, i32* %88)
  ret void
}

declare dso_local i32* @pte_offset_map_lock(i32, i32*, i64, i32**) #1

declare dso_local i64 @pte_none(i32) #1

declare dso_local i32 @mincore_unmapped_range(%struct.vm_area_struct*, i64, i64, i8*) #1

declare dso_local i64 @pte_present(i32) #1

declare dso_local i64 @pte_file(i32) #1

declare dso_local i32 @pte_to_pgoff(i32) #1

declare dso_local zeroext i8 @mincore_page(i32*, i32) #1

declare dso_local i32 @pte_to_swp_entry(i32) #1

declare dso_local i64 @is_migration_entry(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
