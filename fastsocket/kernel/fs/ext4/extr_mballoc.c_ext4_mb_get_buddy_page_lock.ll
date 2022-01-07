; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_mballoc.c_ext4_mb_get_buddy_page_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_mballoc.c_ext4_mb_get_buddy_page_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_buddy = type { %struct.page*, i64, %struct.page* }
%struct.page = type { i64 }
%struct.inode = type { i64 }
%struct.TYPE_2__ = type { %struct.inode* }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, %struct.ext4_buddy*)* @ext4_mb_get_buddy_page_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_mb_get_buddy_page_lock(%struct.super_block* %0, i32 %1, %struct.ext4_buddy* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext4_buddy*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ext4_buddy* %2, %struct.ext4_buddy** %7, align 8
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %8, align 8
  %18 = load %struct.ext4_buddy*, %struct.ext4_buddy** %7, align 8
  %19 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %18, i32 0, i32 0
  store %struct.page* null, %struct.page** %19, align 8
  %20 = load %struct.ext4_buddy*, %struct.ext4_buddy** %7, align 8
  %21 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %20, i32 0, i32 2
  store %struct.page* null, %struct.page** %21, align 8
  %22 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %23 = load %struct.super_block*, %struct.super_block** %5, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %22, %25
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %6, align 4
  %28 = mul nsw i32 %27, 2
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %12, align 4
  %31 = sdiv i32 %29, %30
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %12, align 4
  %34 = srem i32 %32, %33
  store i32 %34, i32* %11, align 4
  %35 = load %struct.inode*, %struct.inode** %8, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @GFP_NOFS, align 4
  %40 = call %struct.page* @find_or_create_page(i64 %37, i32 %38, i32 %39)
  store %struct.page* %40, %struct.page** %13, align 8
  %41 = load %struct.page*, %struct.page** %13, align 8
  %42 = icmp ne %struct.page* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %3
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %106

46:                                               ; preds = %3
  %47 = load %struct.page*, %struct.page** %13, align 8
  %48 = getelementptr inbounds %struct.page, %struct.page* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.inode*, %struct.inode** %8, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @BUG_ON(i32 %54)
  %56 = load %struct.page*, %struct.page** %13, align 8
  %57 = load %struct.ext4_buddy*, %struct.ext4_buddy** %7, align 8
  %58 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %57, i32 0, i32 2
  store %struct.page* %56, %struct.page** %58, align 8
  %59 = load %struct.page*, %struct.page** %13, align 8
  %60 = call i64 @page_address(%struct.page* %59)
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.super_block*, %struct.super_block** %5, align 8
  %63 = getelementptr inbounds %struct.super_block, %struct.super_block* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %61, %64
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %60, %66
  %68 = load %struct.ext4_buddy*, %struct.ext4_buddy** %7, align 8
  %69 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load i32, i32* %12, align 4
  %71 = icmp sge i32 %70, 2
  br i1 %71, label %72, label %73

72:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %106

73:                                               ; preds = %46
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %12, align 4
  %78 = sdiv i32 %76, %77
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %12, align 4
  %81 = srem i32 %79, %80
  store i32 %81, i32* %11, align 4
  %82 = load %struct.inode*, %struct.inode** %8, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @GFP_NOFS, align 4
  %87 = call %struct.page* @find_or_create_page(i64 %84, i32 %85, i32 %86)
  store %struct.page* %87, %struct.page** %13, align 8
  %88 = load %struct.page*, %struct.page** %13, align 8
  %89 = icmp ne %struct.page* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %73
  %91 = load i32, i32* @EIO, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %106

93:                                               ; preds = %73
  %94 = load %struct.page*, %struct.page** %13, align 8
  %95 = getelementptr inbounds %struct.page, %struct.page* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.inode*, %struct.inode** %8, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %96, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @BUG_ON(i32 %101)
  %103 = load %struct.page*, %struct.page** %13, align 8
  %104 = load %struct.ext4_buddy*, %struct.ext4_buddy** %7, align 8
  %105 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %104, i32 0, i32 0
  store %struct.page* %103, %struct.page** %105, align 8
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %93, %90, %72, %43
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local %struct.TYPE_2__* @EXT4_SB(%struct.super_block*) #1

declare dso_local %struct.page* @find_or_create_page(i64, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
