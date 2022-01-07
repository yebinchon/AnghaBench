; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_check_pte_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_check_pte_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }

@MPOL_MF_INVERT = common dso_local global i64 0, align 8
@MPOL_MF_MOVE = common dso_local global i64 0, align 8
@MPOL_MF_MOVE_ALL = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i32*, i64, i64, i32*, i64, i8*)* @check_pte_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_pte_range(%struct.vm_area_struct* %0, i32* %1, i64 %2, i64 %3, i32* %4, i64 %5, i8* %6) #0 {
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.page*, align 8
  %19 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  store i8* %6, i8** %14, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i32* @pte_offset_map_lock(i32 %22, i32* %23, i64 %24, i32** %17)
  store i32* %25, i32** %16, align 8
  store i32* %25, i32** %15, align 8
  br label %26

26:                                               ; preds = %76, %7
  %27 = load i32*, i32** %16, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pte_present(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %76

32:                                               ; preds = %26
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i32*, i32** %16, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.page* @vm_normal_page(%struct.vm_area_struct* %33, i64 %34, i32 %36)
  store %struct.page* %37, %struct.page** %18, align 8
  %38 = load %struct.page*, %struct.page** %18, align 8
  %39 = icmp ne %struct.page* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  br label %76

41:                                               ; preds = %32
  %42 = load %struct.page*, %struct.page** %18, align 8
  %43 = call i64 @PageReserved(%struct.page* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %76

46:                                               ; preds = %41
  %47 = load %struct.page*, %struct.page** %18, align 8
  %48 = call i32 @page_to_nid(%struct.page* %47)
  store i32 %48, i32* %19, align 4
  %49 = load i32, i32* %19, align 4
  %50 = load i32*, i32** %12, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @node_isset(i32 %49, i32 %51)
  %53 = load i64, i64* %13, align 8
  %54 = load i64, i64* @MPOL_MF_INVERT, align 8
  %55 = and i64 %53, %54
  %56 = icmp ne i64 %55, 0
  %57 = xor i1 %56, true
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = icmp eq i32 %52, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %46
  br label %76

62:                                               ; preds = %46
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* @MPOL_MF_MOVE, align 8
  %65 = load i64, i64* @MPOL_MF_MOVE_ALL, align 8
  %66 = or i64 %64, %65
  %67 = and i64 %63, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load %struct.page*, %struct.page** %18, align 8
  %71 = load i8*, i8** %14, align 8
  %72 = load i64, i64* %13, align 8
  %73 = call i32 @migrate_page_add(%struct.page* %70, i8* %71, i64 %72)
  br label %75

74:                                               ; preds = %62
  br label %85

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %75, %61, %45, %40, %31
  %77 = load i32*, i32** %16, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %16, align 8
  %79 = load i64, i64* @PAGE_SIZE, align 8
  %80 = load i64, i64* %10, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %10, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* %11, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %26, label %85

85:                                               ; preds = %76, %74
  %86 = load i32*, i32** %15, align 8
  %87 = load i32*, i32** %17, align 8
  %88 = call i32 @pte_unmap_unlock(i32* %86, i32* %87)
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* %11, align 8
  %91 = icmp ne i64 %89, %90
  %92 = zext i1 %91 to i32
  ret i32 %92
}

declare dso_local i32* @pte_offset_map_lock(i32, i32*, i64, i32**) #1

declare dso_local i32 @pte_present(i32) #1

declare dso_local %struct.page* @vm_normal_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i64 @PageReserved(%struct.page*) #1

declare dso_local i32 @page_to_nid(%struct.page*) #1

declare dso_local i32 @node_isset(i32, i32) #1

declare dso_local i32 @migrate_page_add(%struct.page*, i8*, i64) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
