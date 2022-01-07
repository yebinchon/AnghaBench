; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_gcinode.c_alloc_gcinode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_gcinode.c_alloc_gcinode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i32* }
%struct.the_nilfs = type { i32 }
%struct.nilfs_inode_info = type { i32, i32, i32*, i64, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@def_gcinode_aops = common dso_local global i32 0, align 4
@NILFS_I_GCINODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.the_nilfs*, i32, i32)* @alloc_gcinode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @alloc_gcinode(%struct.the_nilfs* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.the_nilfs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.nilfs_inode_info*, align 8
  store %struct.the_nilfs* %0, %struct.the_nilfs** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @GFP_NOFS, align 4
  %13 = call %struct.inode* @nilfs_mdt_new_common(%struct.the_nilfs* %10, i32* null, i32 %11, i32 %12)
  store %struct.inode* %13, %struct.inode** %8, align 8
  %14 = load %struct.inode*, %struct.inode** %8, align 8
  %15 = icmp ne %struct.inode* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.inode* null, %struct.inode** %4, align 8
  br label %44

17:                                               ; preds = %3
  %18 = load %struct.inode*, %struct.inode** %8, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 2
  store i32* null, i32** %19, align 8
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32* @def_gcinode_aops, i32** %25, align 8
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %26)
  store %struct.nilfs_inode_info* %27, %struct.nilfs_inode_info** %9, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %9, align 8
  %30 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %9, align 8
  %32 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %31, i32 0, i32 3
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @NILFS_I_GCINODE, align 4
  %34 = shl i32 1, %33
  %35 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %9, align 8
  %36 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %9, align 8
  %38 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %37, i32 0, i32 2
  store i32* null, i32** %38, align 8
  %39 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %9, align 8
  %40 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @nilfs_bmap_init_gc(i32 %41)
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %43, %struct.inode** %4, align 8
  br label %44

44:                                               ; preds = %17, %16
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %45
}

declare dso_local %struct.inode* @nilfs_mdt_new_common(%struct.the_nilfs*, i32*, i32, i32) #1

declare dso_local %struct.nilfs_inode_info* @NILFS_I(%struct.inode*) #1

declare dso_local i32 @nilfs_bmap_init_gc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
