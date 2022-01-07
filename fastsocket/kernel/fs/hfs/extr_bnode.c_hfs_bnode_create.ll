; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_bnode.c_hfs_bnode_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_bnode.c_hfs_bnode_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_bnode = type { i32, i32, i64, %struct.page** }
%struct.page = type { i32 }
%struct.hfs_btree = type { i32, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@HFS_BNODE_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8
@HFS_BNODE_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hfs_bnode* @hfs_bnode_create(%struct.hfs_btree* %0, i32 %1) #0 {
  %3 = alloca %struct.hfs_bnode*, align 8
  %4 = alloca %struct.hfs_btree*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfs_bnode*, align 8
  %7 = alloca %struct.page**, align 8
  %8 = alloca i32, align 4
  store %struct.hfs_btree* %0, %struct.hfs_btree** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %10 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %9, i32 0, i32 2
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.hfs_bnode* @hfs_bnode_findhash(%struct.hfs_btree* %12, i32 %13)
  store %struct.hfs_bnode* %14, %struct.hfs_bnode** %6, align 8
  %15 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %16 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %15, i32 0, i32 2
  %17 = call i32 @spin_unlock(i32* %16)
  %18 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %19 = call i32 @BUG_ON(%struct.hfs_bnode* %18)
  %20 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.hfs_bnode* @__hfs_bnode_create(%struct.hfs_btree* %20, i32 %21)
  store %struct.hfs_bnode* %22, %struct.hfs_bnode** %6, align 8
  %23 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %24 = icmp ne %struct.hfs_bnode* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.hfs_bnode* @ERR_PTR(i32 %27)
  store %struct.hfs_bnode* %28, %struct.hfs_bnode** %3, align 8
  br label %97

29:                                               ; preds = %2
  %30 = load i32, i32* @HFS_BNODE_ERROR, align 4
  %31 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %32 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %31, i32 0, i32 1
  %33 = call i64 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %37 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %36)
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.hfs_bnode* @ERR_PTR(i32 %39)
  store %struct.hfs_bnode* %40, %struct.hfs_bnode** %3, align 8
  br label %97

41:                                               ; preds = %29
  %42 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %43 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %42, i32 0, i32 3
  %44 = load %struct.page**, %struct.page*** %43, align 8
  store %struct.page** %44, %struct.page*** %7, align 8
  %45 = load %struct.page**, %struct.page*** %7, align 8
  %46 = load %struct.page*, %struct.page** %45, align 8
  %47 = call i64 @kmap(%struct.page* %46)
  %48 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %49 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %55 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i64 @min(i32 %53, i32 %57)
  %59 = call i32 @memset(i64 %51, i32 0, i64 %58)
  %60 = load %struct.page**, %struct.page*** %7, align 8
  %61 = load %struct.page*, %struct.page** %60, align 8
  %62 = call i32 @set_page_dirty(%struct.page* %61)
  %63 = load %struct.page**, %struct.page*** %7, align 8
  %64 = load %struct.page*, %struct.page** %63, align 8
  %65 = call i32 @kunmap(%struct.page* %64)
  store i32 1, i32* %8, align 4
  br label %66

66:                                               ; preds = %85, %41
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %69 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %66
  %73 = load %struct.page**, %struct.page*** %7, align 8
  %74 = getelementptr inbounds %struct.page*, %struct.page** %73, i32 1
  store %struct.page** %74, %struct.page*** %7, align 8
  %75 = load %struct.page*, %struct.page** %74, align 8
  %76 = call i64 @kmap(%struct.page* %75)
  %77 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %78 = call i32 @memset(i64 %76, i32 0, i64 %77)
  %79 = load %struct.page**, %struct.page*** %7, align 8
  %80 = load %struct.page*, %struct.page** %79, align 8
  %81 = call i32 @set_page_dirty(%struct.page* %80)
  %82 = load %struct.page**, %struct.page*** %7, align 8
  %83 = load %struct.page*, %struct.page** %82, align 8
  %84 = call i32 @kunmap(%struct.page* %83)
  br label %85

85:                                               ; preds = %72
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %66

88:                                               ; preds = %66
  %89 = load i32, i32* @HFS_BNODE_NEW, align 4
  %90 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %91 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %90, i32 0, i32 1
  %92 = call i32 @clear_bit(i32 %89, i32* %91)
  %93 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %94 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %93, i32 0, i32 0
  %95 = call i32 @wake_up(i32* %94)
  %96 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  store %struct.hfs_bnode* %96, %struct.hfs_bnode** %3, align 8
  br label %97

97:                                               ; preds = %88, %35, %25
  %98 = load %struct.hfs_bnode*, %struct.hfs_bnode** %3, align 8
  ret %struct.hfs_bnode* %98
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.hfs_bnode* @hfs_bnode_findhash(%struct.hfs_btree*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @BUG_ON(%struct.hfs_bnode*) #1

declare dso_local %struct.hfs_bnode* @__hfs_bnode_create(%struct.hfs_btree*, i32) #1

declare dso_local %struct.hfs_bnode* @ERR_PTR(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hfs_bnode_put(%struct.hfs_bnode*) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i64 @kmap(%struct.page*) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
