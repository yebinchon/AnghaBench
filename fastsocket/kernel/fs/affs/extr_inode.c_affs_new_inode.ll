; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_inode.c_affs_new_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_inode.c_affs_new_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32, i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i64, i64, i32*, i32*, i64, i64, i64, i32*, i64, i32 }

@CURRENT_TIME_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @affs_new_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 7
  %10 = load %struct.super_block*, %struct.super_block** %9, align 8
  store %struct.super_block* %10, %struct.super_block** %4, align 8
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  %12 = call %struct.inode* @new_inode(%struct.super_block* %11)
  store %struct.inode* %12, %struct.inode** %5, align 8
  %13 = icmp ne %struct.inode* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %107

15:                                               ; preds = %1
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @affs_alloc_block(%struct.inode* %16, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  br label %104

23:                                               ; preds = %15
  %24 = load %struct.super_block*, %struct.super_block** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.buffer_head* @affs_getzeroblk(%struct.super_block* %24, i32 %25)
  store %struct.buffer_head* %26, %struct.buffer_head** %7, align 8
  %27 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %28 = icmp ne %struct.buffer_head* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  br label %100

30:                                               ; preds = %23
  %31 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %31, %struct.inode* %32)
  %34 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %35 = call i32 @affs_brelse(%struct.buffer_head* %34)
  %36 = call i32 (...) @current_fsuid()
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 8
  %39 = call i32 (...) @current_fsgid()
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 2
  store i32 %47, i32* %51, align 8
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 3
  store i32 %47, i32* %53, align 4
  %54 = load %struct.inode*, %struct.inode** %5, align 8
  %55 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 13
  %57 = call i32 @atomic_set(i32* %56, i32 0)
  %58 = load %struct.inode*, %struct.inode** %5, align 8
  %59 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %58)
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 12
  store i64 0, i64* %60, align 8
  %61 = load %struct.inode*, %struct.inode** %5, align 8
  %62 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 11
  store i32* null, i32** %63, align 8
  %64 = load %struct.inode*, %struct.inode** %5, align 8
  %65 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %64)
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 10
  store i64 0, i64* %66, align 8
  %67 = load %struct.inode*, %struct.inode** %5, align 8
  %68 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %67)
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 9
  store i64 0, i64* %69, align 8
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %70)
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 8
  store i64 0, i64* %72, align 8
  %73 = load %struct.inode*, %struct.inode** %5, align 8
  %74 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %73)
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 7
  store i32* null, i32** %75, align 8
  %76 = load %struct.inode*, %struct.inode** %5, align 8
  %77 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %76)
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 6
  store i32* null, i32** %78, align 8
  %79 = load %struct.inode*, %struct.inode** %5, align 8
  %80 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %79)
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 5
  store i64 0, i64* %81, align 8
  %82 = load %struct.inode*, %struct.inode** %5, align 8
  %83 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %82)
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 4
  store i64 0, i64* %84, align 8
  %85 = load %struct.inode*, %struct.inode** %5, align 8
  %86 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %85)
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 3
  store i64 0, i64* %87, align 8
  %88 = load %struct.inode*, %struct.inode** %5, align 8
  %89 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %88)
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  store i64 0, i64* %90, align 8
  %91 = load %struct.inode*, %struct.inode** %5, align 8
  %92 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %91)
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  %94 = load %struct.inode*, %struct.inode** %5, align 8
  %95 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %94)
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  store i32 -2, i32* %96, align 4
  %97 = load %struct.inode*, %struct.inode** %5, align 8
  %98 = call i32 @insert_inode_hash(%struct.inode* %97)
  %99 = load %struct.inode*, %struct.inode** %5, align 8
  store %struct.inode* %99, %struct.inode** %2, align 8
  br label %108

100:                                              ; preds = %29
  %101 = load %struct.super_block*, %struct.super_block** %4, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @affs_free_block(%struct.super_block* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %22
  %105 = load %struct.inode*, %struct.inode** %5, align 8
  %106 = call i32 @iput(%struct.inode* %105)
  br label %107

107:                                              ; preds = %104, %14
  store %struct.inode* null, %struct.inode** %2, align 8
  br label %108

108:                                              ; preds = %107, %30
  %109 = load %struct.inode*, %struct.inode** %2, align 8
  ret %struct.inode* %109
}

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @affs_alloc_block(%struct.inode*, i32) #1

declare dso_local %struct.buffer_head* @affs_getzeroblk(%struct.super_block*, i32) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i32 @affs_brelse(%struct.buffer_head*) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @AFFS_I(%struct.inode*) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

declare dso_local i32 @affs_free_block(%struct.super_block*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
