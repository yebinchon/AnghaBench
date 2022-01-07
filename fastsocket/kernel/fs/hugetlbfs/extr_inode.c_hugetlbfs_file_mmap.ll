; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hugetlbfs/extr_inode.c_hugetlbfs_file_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hugetlbfs/extr_inode.c_hugetlbfs_file_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.vm_area_struct = type { i32, i32, i32, i64, i64, i32* }
%struct.hstate = type { i32 }

@VM_HUGETLB = common dso_local global i32 0, align 4
@VM_RESERVED = common dso_local global i32 0, align 4
@hugetlb_vm_ops = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @hugetlbfs_file_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hugetlbfs_file_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hstate*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %6, align 8
  %17 = load %struct.file*, %struct.file** %4, align 8
  %18 = call %struct.hstate* @hstate_file(%struct.file* %17)
  store %struct.hstate* %18, %struct.hstate** %10, align 8
  %19 = load i32, i32* @VM_HUGETLB, align 4
  %20 = load i32, i32* @VM_RESERVED, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %27 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %26, i32 0, i32 5
  store i32* @hugetlb_vm_ops, i32** %27, align 8
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.hstate*, %struct.hstate** %10, align 8
  %32 = call i32 @huge_page_mask(%struct.hstate* %31)
  %33 = load i32, i32* @PAGE_SHIFT, align 4
  %34 = ashr i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = and i32 %30, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %2
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %109

41:                                               ; preds = %2
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %43 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %46 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %8, align 4
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 1
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.file*, %struct.file** %4, align 8
  %54 = call i32 @file_accessed(%struct.file* %53)
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %59 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @PAGE_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = add nsw i32 %57, %62
  store i32 %63, i32* %7, align 4
  %64 = load %struct.inode*, %struct.inode** %6, align 8
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %66 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.hstate*, %struct.hstate** %10, align 8
  %69 = call i32 @huge_page_order(%struct.hstate* %68)
  %70 = ashr i32 %67, %69
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.hstate*, %struct.hstate** %10, align 8
  %73 = call i32 @huge_page_shift(%struct.hstate* %72)
  %74 = ashr i32 %71, %73
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %76 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %77 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @hugetlb_reserve_pages(%struct.inode* %64, i32 %70, i32 %74, %struct.vm_area_struct* %75, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %41
  br label %104

82:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  %83 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %84 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @hugetlb_prefault_arch_hook(i32 %85)
  %87 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %88 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @VM_WRITE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %82
  %94 = load %struct.inode*, %struct.inode** %6, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.inode*, %struct.inode** %6, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %99, %93, %82
  br label %104

104:                                              ; preds = %103, %81
  %105 = load %struct.inode*, %struct.inode** %6, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 1
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %104, %38
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.hstate* @hstate_file(%struct.file*) #1

declare dso_local i32 @huge_page_mask(%struct.hstate*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @file_accessed(%struct.file*) #1

declare dso_local i64 @hugetlb_reserve_pages(%struct.inode*, i32, i32, %struct.vm_area_struct*, i32) #1

declare dso_local i32 @huge_page_order(%struct.hstate*) #1

declare dso_local i32 @huge_page_shift(%struct.hstate*) #1

declare dso_local i32 @hugetlb_prefault_arch_hook(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
