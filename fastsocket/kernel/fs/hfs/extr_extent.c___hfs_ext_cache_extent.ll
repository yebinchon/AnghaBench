; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_extent.c___hfs_ext_cache_extent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_extent.c___hfs_ext_cache_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_find_data = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_6__ = type { i32, i64, i64, i32 }

@HFS_FLG_EXT_DIRTY = common dso_local global i32 0, align 4
@HFS_FK_RSRC = common dso_local global i32 0, align 4
@HFS_FK_DATA = common dso_local global i32 0, align 4
@HFS_FLG_EXT_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfs_find_data*, %struct.inode*, i32)* @__hfs_ext_cache_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hfs_ext_cache_extent(%struct.hfs_find_data* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca %struct.hfs_find_data*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hfs_find_data* %0, %struct.hfs_find_data** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.inode*, %struct.inode** %5, align 8
  %9 = call %struct.TYPE_6__* @HFS_I(%struct.inode* %8)
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @HFS_FLG_EXT_DIRTY, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = load %struct.hfs_find_data*, %struct.hfs_find_data** %4, align 8
  %18 = call i32 @__hfs_ext_write_extent(%struct.inode* %16, %struct.hfs_find_data* %17)
  br label %19

19:                                               ; preds = %15, %3
  %20 = load %struct.hfs_find_data*, %struct.hfs_find_data** %4, align 8
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = call %struct.TYPE_6__* @HFS_I(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = call i64 @HFS_IS_RSRC(%struct.inode* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %19
  %33 = load i32, i32* @HFS_FK_RSRC, align 4
  br label %36

34:                                               ; preds = %19
  %35 = load i32, i32* @HFS_FK_DATA, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = call i32 @__hfs_ext_read_extent(%struct.hfs_find_data* %20, i32 %24, i32 %27, i32 %28, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %60, label %41

41:                                               ; preds = %36
  %42 = load %struct.hfs_find_data*, %struct.hfs_find_data** %4, align 8
  %43 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @be16_to_cpu(i32 %47)
  %49 = load %struct.inode*, %struct.inode** %5, align 8
  %50 = call %struct.TYPE_6__* @HFS_I(%struct.inode* %49)
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  store i64 %48, i64* %51, align 8
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = call %struct.TYPE_6__* @HFS_I(%struct.inode* %52)
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @hfs_ext_block_count(i32 %55)
  %57 = load %struct.inode*, %struct.inode** %5, align 8
  %58 = call %struct.TYPE_6__* @HFS_I(%struct.inode* %57)
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store i64 %56, i64* %59, align 8
  br label %76

60:                                               ; preds = %36
  %61 = load %struct.inode*, %struct.inode** %5, align 8
  %62 = call %struct.TYPE_6__* @HFS_I(%struct.inode* %61)
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load %struct.inode*, %struct.inode** %5, align 8
  %65 = call %struct.TYPE_6__* @HFS_I(%struct.inode* %64)
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* @HFS_FLG_EXT_DIRTY, align 4
  %68 = load i32, i32* @HFS_FLG_EXT_NEW, align 4
  %69 = or i32 %67, %68
  %70 = xor i32 %69, -1
  %71 = load %struct.inode*, %struct.inode** %5, align 8
  %72 = call %struct.TYPE_6__* @HFS_I(%struct.inode* %71)
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %70
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %60, %41
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local %struct.TYPE_6__* @HFS_I(%struct.inode*) #1

declare dso_local i32 @__hfs_ext_write_extent(%struct.inode*, %struct.hfs_find_data*) #1

declare dso_local i32 @__hfs_ext_read_extent(%struct.hfs_find_data*, i32, i32, i32, i32) #1

declare dso_local i64 @HFS_IS_RSRC(%struct.inode*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i64 @hfs_ext_block_count(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
