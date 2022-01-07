; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_super.c_ntfs_statfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_super.c_ntfs_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i32, i32, i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Entering.\00", align 1
@NTFS_SB_MAGIC = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@NTFS_MAX_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @ntfs_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntfs_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %5, align 8
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = call %struct.TYPE_9__* @NTFS_SB(%struct.super_block* %14)
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %7, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.TYPE_10__* @NTFS_I(i32 %18)
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %8, align 8
  %20 = call i32 @ntfs_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @NTFS_SB_MAGIC, align 4
  %22 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %23 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %25 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %26 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %29, %32
  %34 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %35 = ashr i32 %33, %34
  %36 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %37 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = call i32 @get_nr_free_clusters(%struct.TYPE_9__* %38)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %39, %42
  %44 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %45 = ashr i32 %43, %44
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %50

50:                                               ; preds = %49, %2
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %53 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %52, i32 0, i32 3
  store i64 %51, i64* %53, align 8
  %54 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %55 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %54, i32 0, i32 2
  store i64 %51, i64* %55, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 4
  %58 = call i32 @down_read(i32* %57)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @read_lock_irqsave(i32* %60, i64 %61)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @i_size_read(i32 %65)
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = ashr i64 %66, %69
  store i64 %70, i64* %6, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = ashr i32 %73, %77
  %79 = add nsw i32 %78, 7
  %80 = ashr i32 %79, 3
  %81 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %82 = add nsw i32 %80, %81
  %83 = sub nsw i32 %82, 1
  %84 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %85 = ashr i32 %83, %84
  store i32 %85, i32* %9, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load i64, i64* %10, align 8
  %89 = call i32 @read_unlock_irqrestore(i32* %87, i64 %88)
  %90 = load i64, i64* %6, align 8
  %91 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %92 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %91, i32 0, i32 4
  store i64 %90, i64* %92, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %94 = load i64, i64* %6, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @__get_nr_free_mft_records(%struct.TYPE_9__* %93, i64 %94, i32 %95)
  %97 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %98 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %97, i32 0, i32 7
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 4
  %101 = call i32 @up_read(i32* %100)
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %106 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  store i32 %104, i32* %109, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = ashr i32 %112, 32
  %114 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %115 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %114, i32 0, i32 6
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  store i32 %113, i32* %118, align 4
  %119 = load i32, i32* @NTFS_MAX_NAME_LEN, align 4
  %120 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %121 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 8
  ret i32 0
}

declare dso_local %struct.TYPE_9__* @NTFS_SB(%struct.super_block*) #1

declare dso_local %struct.TYPE_10__* @NTFS_I(i32) #1

declare dso_local i32 @ntfs_debug(i8*) #1

declare dso_local i32 @get_nr_free_clusters(%struct.TYPE_9__*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i64 @i_size_read(i32) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__get_nr_free_mft_records(%struct.TYPE_9__*, i64, i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
