; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_alloc.c_hpfs_alloc_anode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_alloc.c_hpfs_alloc_anode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anode = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }

@ANODE_ALLOC_FWD = common dso_local global i32 0, align 4
@ANODE_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.anode* @hpfs_alloc_anode(%struct.super_block* %0, i32 %1, i32* %2, %struct.buffer_head** %3) #0 {
  %5 = alloca %struct.anode*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.buffer_head**, align 8
  %10 = alloca %struct.anode*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.buffer_head** %3, %struct.buffer_head*** %9, align 8
  %11 = load %struct.super_block*, %struct.super_block** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @ANODE_ALLOC_FWD, align 4
  %14 = call i32 @hpfs_alloc_sector(%struct.super_block* %11, i32 %12, i32 1, i32 %13, i32 1)
  %15 = load i32*, i32** %8, align 8
  store i32 %14, i32* %15, align 4
  %16 = icmp ne i32 %14, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store %struct.anode* null, %struct.anode** %5, align 8
  br label %50

18:                                               ; preds = %4
  %19 = load %struct.super_block*, %struct.super_block** %6, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %23 = call %struct.anode* @hpfs_get_sector(%struct.super_block* %19, i32 %21, %struct.buffer_head** %22)
  store %struct.anode* %23, %struct.anode** %10, align 8
  %24 = icmp ne %struct.anode* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = load %struct.super_block*, %struct.super_block** %6, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @hpfs_free_sectors(%struct.super_block* %26, i32 %28, i32 1)
  store %struct.anode* null, %struct.anode** %5, align 8
  br label %50

30:                                               ; preds = %18
  %31 = load %struct.anode*, %struct.anode** %10, align 8
  %32 = call i32 @memset(%struct.anode* %31, i32 0, i32 512)
  %33 = load i32, i32* @ANODE_MAGIC, align 4
  %34 = load %struct.anode*, %struct.anode** %10, align 8
  %35 = getelementptr inbounds %struct.anode, %struct.anode* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.anode*, %struct.anode** %10, align 8
  %39 = getelementptr inbounds %struct.anode, %struct.anode* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.anode*, %struct.anode** %10, align 8
  %41 = getelementptr inbounds %struct.anode, %struct.anode* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 40, i32* %42, align 8
  %43 = load %struct.anode*, %struct.anode** %10, align 8
  %44 = getelementptr inbounds %struct.anode, %struct.anode* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load %struct.anode*, %struct.anode** %10, align 8
  %47 = getelementptr inbounds %struct.anode, %struct.anode* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 8, i32* %48, align 4
  %49 = load %struct.anode*, %struct.anode** %10, align 8
  store %struct.anode* %49, %struct.anode** %5, align 8
  br label %50

50:                                               ; preds = %30, %25, %17
  %51 = load %struct.anode*, %struct.anode** %5, align 8
  ret %struct.anode* %51
}

declare dso_local i32 @hpfs_alloc_sector(%struct.super_block*, i32, i32, i32, i32) #1

declare dso_local %struct.anode* @hpfs_get_sector(%struct.super_block*, i32, %struct.buffer_head**) #1

declare dso_local i32 @hpfs_free_sectors(%struct.super_block*, i32, i32) #1

declare dso_local i32 @memset(%struct.anode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
