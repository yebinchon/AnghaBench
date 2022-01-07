; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_alloc.c_hpfs_alloc_dnode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_alloc.c_hpfs_alloc_dnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnode = type { i32, i32*, i32, i32 }
%struct.super_block = type { i32 }
%struct.quad_buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32 }

@FREE_DNODES_ADD = common dso_local global i64 0, align 8
@DNODE_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dnode* @hpfs_alloc_dnode(%struct.super_block* %0, i32 %1, i32* %2, %struct.quad_buffer_head* %3, i32 %4) #0 {
  %6 = alloca %struct.dnode*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.quad_buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dnode*, align 8
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store %struct.quad_buffer_head* %3, %struct.quad_buffer_head** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.super_block*, %struct.super_block** %7, align 8
  %14 = load %struct.super_block*, %struct.super_block** %7, align 8
  %15 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @hpfs_count_one_bitmap(%struct.super_block* %13, i32 %17)
  %19 = load i64, i64* @FREE_DNODES_ADD, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %5
  %22 = load %struct.super_block*, %struct.super_block** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @alloc_in_dirband(%struct.super_block* %22, i32 %23, i32 %24)
  %26 = load i32*, i32** %9, align 8
  store i32 %25, i32* %26, align 4
  %27 = icmp ne i32 %25, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %21
  %29 = load %struct.super_block*, %struct.super_block** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @hpfs_alloc_sector(%struct.super_block* %29, i32 %30, i32 4, i32 0, i32 %31)
  %33 = load i32*, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  %34 = icmp ne i32 %32, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store %struct.dnode* null, %struct.dnode** %6, align 8
  br label %96

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %21
  br label %55

38:                                               ; preds = %5
  %39 = load %struct.super_block*, %struct.super_block** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @hpfs_alloc_sector(%struct.super_block* %39, i32 %40, i32 4, i32 0, i32 %41)
  %43 = load i32*, i32** %9, align 8
  store i32 %42, i32* %43, align 4
  %44 = icmp ne i32 %42, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %38
  %46 = load %struct.super_block*, %struct.super_block** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @alloc_in_dirband(%struct.super_block* %46, i32 %47, i32 %48)
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  %51 = icmp ne i32 %49, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  store %struct.dnode* null, %struct.dnode** %6, align 8
  br label %96

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %38
  br label %55

55:                                               ; preds = %54, %37
  %56 = load %struct.super_block*, %struct.super_block** %7, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %10, align 8
  %60 = call %struct.dnode* @hpfs_get_4sectors(%struct.super_block* %56, i32 %58, %struct.quad_buffer_head* %59)
  store %struct.dnode* %60, %struct.dnode** %12, align 8
  %61 = icmp ne %struct.dnode* %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %55
  %63 = load %struct.super_block*, %struct.super_block** %7, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @hpfs_free_dnode(%struct.super_block* %63, i32 %65)
  store %struct.dnode* null, %struct.dnode** %6, align 8
  br label %96

67:                                               ; preds = %55
  %68 = load %struct.dnode*, %struct.dnode** %12, align 8
  %69 = call i32 @memset(%struct.dnode* %68, i32 0, i32 2048)
  %70 = load i32, i32* @DNODE_MAGIC, align 4
  %71 = load %struct.dnode*, %struct.dnode** %12, align 8
  %72 = getelementptr inbounds %struct.dnode, %struct.dnode* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.dnode*, %struct.dnode** %12, align 8
  %74 = getelementptr inbounds %struct.dnode, %struct.dnode* %73, i32 0, i32 0
  store i32 52, i32* %74, align 8
  %75 = load %struct.dnode*, %struct.dnode** %12, align 8
  %76 = getelementptr inbounds %struct.dnode, %struct.dnode* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 32, i32* %78, align 4
  %79 = load %struct.dnode*, %struct.dnode** %12, align 8
  %80 = getelementptr inbounds %struct.dnode, %struct.dnode* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  store i32 8, i32* %82, align 4
  %83 = load %struct.dnode*, %struct.dnode** %12, align 8
  %84 = getelementptr inbounds %struct.dnode, %struct.dnode* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 30
  store i32 1, i32* %86, align 4
  %87 = load %struct.dnode*, %struct.dnode** %12, align 8
  %88 = getelementptr inbounds %struct.dnode, %struct.dnode* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 31
  store i32 255, i32* %90, align 4
  %91 = load i32*, i32** %9, align 8
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.dnode*, %struct.dnode** %12, align 8
  %94 = getelementptr inbounds %struct.dnode, %struct.dnode* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load %struct.dnode*, %struct.dnode** %12, align 8
  store %struct.dnode* %95, %struct.dnode** %6, align 8
  br label %96

96:                                               ; preds = %67, %62, %52, %35
  %97 = load %struct.dnode*, %struct.dnode** %6, align 8
  ret %struct.dnode* %97
}

declare dso_local i64 @hpfs_count_one_bitmap(%struct.super_block*, i32) #1

declare dso_local %struct.TYPE_2__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i32 @alloc_in_dirband(%struct.super_block*, i32, i32) #1

declare dso_local i32 @hpfs_alloc_sector(%struct.super_block*, i32, i32, i32, i32) #1

declare dso_local %struct.dnode* @hpfs_get_4sectors(%struct.super_block*, i32, %struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_free_dnode(%struct.super_block*, i32) #1

declare dso_local i32 @memset(%struct.dnode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
