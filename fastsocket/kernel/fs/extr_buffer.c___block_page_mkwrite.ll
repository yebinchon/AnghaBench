; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c___block_page_mkwrite.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c___block_page_mkwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.vm_fault = type { %struct.page* }
%struct.page = type { i64, i32 }

@EFAULT = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_MASK = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8
@SB_UNFROZEN = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__block_page_mkwrite(%struct.vm_area_struct* %0, %struct.vm_fault* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.vm_fault*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store %struct.vm_fault* %1, %struct.vm_fault** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.vm_fault*, %struct.vm_fault** %6, align 8
  %14 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %13, i32 0, i32 0
  %15 = load %struct.page*, %struct.page** %14, align 8
  store %struct.page* %15, %struct.page** %8, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.inode*, %struct.inode** %22, align 8
  store %struct.inode* %23, %struct.inode** %9, align 8
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = call i32 @file_update_time(%struct.TYPE_8__* %26)
  %28 = load %struct.page*, %struct.page** %8, align 8
  %29 = call i32 @lock_page(%struct.page* %28)
  %30 = load %struct.inode*, %struct.inode** %9, align 8
  %31 = call i32 @i_size_read(%struct.inode* %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.page*, %struct.page** %8, align 8
  %33 = getelementptr inbounds %struct.page, %struct.page* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.inode*, %struct.inode** %9, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %3
  %40 = load %struct.page*, %struct.page** %8, align 8
  %41 = call i32 @page_offset(%struct.page* %40)
  %42 = load i32, i32* %11, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39, %3
  %45 = load i32, i32* @EFAULT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %12, align 4
  br label %104

47:                                               ; preds = %39
  %48 = load %struct.page*, %struct.page** %8, align 8
  %49 = getelementptr inbounds %struct.page, %struct.page* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  %52 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* %11, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @PAGE_CACHE_MASK, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %10, align 8
  br label %64

62:                                               ; preds = %47
  %63 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  store i64 %63, i64* %10, align 8
  br label %64

64:                                               ; preds = %62, %56
  %65 = load %struct.page*, %struct.page** %8, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @block_prepare_write(%struct.page* %65, i32 0, i64 %66, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %64
  %72 = load %struct.page*, %struct.page** %8, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @block_commit_write(%struct.page* %72, i32 0, i64 %73)
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %71, %64
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %104

82:                                               ; preds = %75
  %83 = load %struct.page*, %struct.page** %8, align 8
  %84 = call i32 @set_page_dirty(%struct.page* %83)
  %85 = load %struct.inode*, %struct.inode** %9, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 1
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = call i32 @sb_has_new_freeze(%struct.TYPE_7__* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %82
  %91 = load %struct.inode*, %struct.inode** %9, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 1
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @SB_UNFROZEN, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load i32, i32* @EAGAIN, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %12, align 4
  br label %104

101:                                              ; preds = %90, %82
  %102 = load %struct.page*, %struct.page** %8, align 8
  %103 = call i32 @wait_for_stable_page(%struct.page* %102)
  store i32 0, i32* %4, align 4
  br label %108

104:                                              ; preds = %98, %81, %44
  %105 = load %struct.page*, %struct.page** %8, align 8
  %106 = call i32 @unlock_page(%struct.page* %105)
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %104, %101
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @file_update_time(%struct.TYPE_8__*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local i32 @block_prepare_write(%struct.page*, i32, i64, i32) #1

declare dso_local i32 @block_commit_write(%struct.page*, i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @sb_has_new_freeze(%struct.TYPE_7__*) #1

declare dso_local i32 @wait_for_stable_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
