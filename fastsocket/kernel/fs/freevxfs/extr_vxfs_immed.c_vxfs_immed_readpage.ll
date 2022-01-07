; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/freevxfs/extr_vxfs_immed.c_vxfs_immed_readpage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/freevxfs/extr_vxfs_immed.c_vxfs_immed_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.vxfs_inode_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.page*)* @vxfs_immed_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxfs_immed_readpage(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.vxfs_inode_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %8 = load %struct.page*, %struct.page** %4, align 8
  %9 = getelementptr inbounds %struct.page, %struct.page* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.vxfs_inode_info* @VXFS_INO(i32 %12)
  store %struct.vxfs_inode_info* %13, %struct.vxfs_inode_info** %5, align 8
  %14 = load %struct.page*, %struct.page** %4, align 8
  %15 = getelementptr inbounds %struct.page, %struct.page* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %19 = shl i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load %struct.page*, %struct.page** %4, align 8
  %21 = call i32 @kmap(%struct.page* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %5, align 8
  %24 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %30 = call i32 @memcpy(i32 %22, i32 %28, i32 %29)
  %31 = load %struct.page*, %struct.page** %4, align 8
  %32 = call i32 @kunmap(%struct.page* %31)
  %33 = load %struct.page*, %struct.page** %4, align 8
  %34 = call i32 @flush_dcache_page(%struct.page* %33)
  %35 = load %struct.page*, %struct.page** %4, align 8
  %36 = call i32 @SetPageUptodate(%struct.page* %35)
  %37 = load %struct.page*, %struct.page** %4, align 8
  %38 = call i32 @unlock_page(%struct.page* %37)
  ret i32 0
}

declare dso_local %struct.vxfs_inode_info* @VXFS_INO(i32) #1

declare dso_local i32 @kmap(%struct.page*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
