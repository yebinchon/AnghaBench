; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_hugetlb_reserve_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_hugetlb_reserve_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.hstate = type { i32 }
%struct.hugepage_subpool = type { i32 }
%struct.resv_map = type { i32 }

@VM_NORESERVE = common dso_local global i32 0, align 4
@VM_MAYSHARE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HPAGE_RESV_OWNER = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hugetlb_reserve_pages(%struct.inode* %0, i64 %1, i64 %2, %struct.vm_area_struct* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vm_area_struct*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.hstate*, align 8
  %15 = alloca %struct.hugepage_subpool*, align 8
  %16 = alloca %struct.resv_map*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.vm_area_struct* %3, %struct.vm_area_struct** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = call %struct.hstate* @hstate_inode(%struct.inode* %17)
  store %struct.hstate* %18, %struct.hstate** %14, align 8
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = call %struct.hugepage_subpool* @subpool_inode(%struct.inode* %19)
  store %struct.hugepage_subpool* %20, %struct.hugepage_subpool** %15, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @VM_NORESERVE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %112

26:                                               ; preds = %5
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %28 = icmp ne %struct.vm_area_struct* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @VM_MAYSHARE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %29, %26
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i64 @region_chg(i32* %40, i64 %41, i64 %42)
  store i64 %43, i64* %13, align 8
  br label %61

44:                                               ; preds = %29
  %45 = call %struct.resv_map* (...) @resv_map_alloc()
  store %struct.resv_map* %45, %struct.resv_map** %16, align 8
  %46 = load %struct.resv_map*, %struct.resv_map** %16, align 8
  %47 = icmp ne %struct.resv_map* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %112

51:                                               ; preds = %44
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %8, align 8
  %54 = sub nsw i64 %52, %53
  store i64 %54, i64* %13, align 8
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %56 = load %struct.resv_map*, %struct.resv_map** %16, align 8
  %57 = call i32 @set_vma_resv_map(%struct.vm_area_struct* %55, %struct.resv_map* %56)
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %59 = load i32, i32* @HPAGE_RESV_OWNER, align 4
  %60 = call i32 @set_vma_resv_flags(%struct.vm_area_struct* %58, i32 %59)
  br label %61

61:                                               ; preds = %51, %36
  %62 = load i64, i64* %13, align 8
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i64, i64* %13, align 8
  store i64 %65, i64* %12, align 8
  br label %103

66:                                               ; preds = %61
  %67 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %15, align 8
  %68 = load i64, i64* %13, align 8
  %69 = call i64 @hugepage_subpool_get_pages(%struct.hugepage_subpool* %67, i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i64, i64* @ENOSPC, align 8
  %73 = sub nsw i64 0, %72
  store i64 %73, i64* %12, align 8
  br label %103

74:                                               ; preds = %66
  %75 = load %struct.hstate*, %struct.hstate** %14, align 8
  %76 = load i64, i64* %13, align 8
  %77 = call i64 @hugetlb_acct_memory(%struct.hstate* %75, i64 %76)
  store i64 %77, i64* %12, align 8
  %78 = load i64, i64* %12, align 8
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %15, align 8
  %82 = load i64, i64* %13, align 8
  %83 = call i32 @hugepage_subpool_put_pages(%struct.hugepage_subpool* %81, i64 %82)
  br label %103

84:                                               ; preds = %74
  %85 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %86 = icmp ne %struct.vm_area_struct* %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %89 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @VM_MAYSHARE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %87, %84
  %95 = load %struct.inode*, %struct.inode** %7, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* %9, align 8
  %101 = call i32 @region_add(i32* %98, i64 %99, i64 %100)
  br label %102

102:                                              ; preds = %94, %87
  store i32 0, i32* %6, align 4
  br label %112

103:                                              ; preds = %80, %71, %64
  %104 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %105 = icmp ne %struct.vm_area_struct* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %108 = call i32 @resv_map_put(%struct.vm_area_struct* %107)
  br label %109

109:                                              ; preds = %106, %103
  %110 = load i64, i64* %12, align 8
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %109, %102, %48, %25
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local %struct.hstate* @hstate_inode(%struct.inode*) #1

declare dso_local %struct.hugepage_subpool* @subpool_inode(%struct.inode*) #1

declare dso_local i64 @region_chg(i32*, i64, i64) #1

declare dso_local %struct.resv_map* @resv_map_alloc(...) #1

declare dso_local i32 @set_vma_resv_map(%struct.vm_area_struct*, %struct.resv_map*) #1

declare dso_local i32 @set_vma_resv_flags(%struct.vm_area_struct*, i32) #1

declare dso_local i64 @hugepage_subpool_get_pages(%struct.hugepage_subpool*, i64) #1

declare dso_local i64 @hugetlb_acct_memory(%struct.hstate*, i64) #1

declare dso_local i32 @hugepage_subpool_put_pages(%struct.hugepage_subpool*, i64) #1

declare dso_local i32 @region_add(i32*, i64, i64) #1

declare dso_local i32 @resv_map_put(%struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
