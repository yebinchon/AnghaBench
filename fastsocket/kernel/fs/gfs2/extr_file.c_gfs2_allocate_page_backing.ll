; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_file.c_gfs2_allocate_page_backing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_file.c_gfs2_allocate_page_backing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.buffer_head = type { i64, i64 }

@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*)* @gfs2_allocate_page_backing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_allocate_page_backing(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  %8 = load %struct.page*, %struct.page** %3, align 8
  %9 = getelementptr inbounds %struct.page, %struct.page* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %12, %struct.inode** %4, align 8
  %13 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  store i64 %13, i64* %6, align 8
  %14 = load %struct.page*, %struct.page** %3, align 8
  %15 = getelementptr inbounds %struct.page, %struct.page* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %17, %20
  %22 = shl i32 %16, %21
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %51, %1
  %24 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %5, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %5, i32 0, i32 0
  store i64 %25, i64* %26, align 8
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @gfs2_block_map(%struct.inode* %27, i32 %28, %struct.buffer_head* %5, i32 1)
  %30 = call i32 @buffer_mapped(%struct.buffer_head* %5)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %55

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %5, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = sub i64 %38, %37
  store i64 %39, i64* %6, align 8
  %40 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %5, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = zext i32 %44 to i64
  %46 = lshr i64 %41, %45
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %35
  %52 = load i64, i64* %6, align 8
  %53 = icmp ugt i64 %52, 0
  br i1 %53, label %23, label %54

54:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %32
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @gfs2_block_map(%struct.inode*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
