; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_gcdat.c_nilfs_commit_gcdat_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_gcdat.c_nilfs_commit_gcdat_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { %struct.inode*, %struct.inode* }
%struct.inode = type { i32, %struct.address_space* }
%struct.address_space = type { i32 }
%struct.nilfs_inode_info = type { i32, %struct.address_space, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@NILFS_I_GCDAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_commit_gcdat_inode(%struct.the_nilfs* %0) #0 {
  %2 = alloca %struct.the_nilfs*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nilfs_inode_info*, align 8
  %6 = alloca %struct.nilfs_inode_info*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.address_space*, align 8
  store %struct.the_nilfs* %0, %struct.the_nilfs** %2, align 8
  %9 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %10 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %9, i32 0, i32 1
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %3, align 8
  %12 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %13 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %4, align 8
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %15)
  store %struct.nilfs_inode_info* %16, %struct.nilfs_inode_info** %5, align 8
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %17)
  store %struct.nilfs_inode_info* %18, %struct.nilfs_inode_info** %6, align 8
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 1
  %21 = load %struct.address_space*, %struct.address_space** %20, align 8
  store %struct.address_space* %21, %struct.address_space** %7, align 8
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 1
  %24 = load %struct.address_space*, %struct.address_space** %23, align 8
  store %struct.address_space* %24, %struct.address_space** %8, align 8
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @down_write(i32* %27)
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.inode*, %struct.inode** %3, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %6, align 8
  %35 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %5, align 8
  %38 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %6, align 8
  %40 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @NILFS_I_GCDAT, align 4
  %43 = shl i32 1, %42
  %44 = xor i32 %43, -1
  %45 = and i32 %41, %44
  %46 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %5, align 8
  %47 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %6, align 8
  %49 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %5, align 8
  %52 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @nilfs_bmap_commit_gcdat(i32 %50, i32 %53)
  %55 = load %struct.address_space*, %struct.address_space** %7, align 8
  %56 = call i32 @nilfs_clear_dirty_pages(%struct.address_space* %55)
  %57 = load %struct.address_space*, %struct.address_space** %7, align 8
  %58 = load %struct.address_space*, %struct.address_space** %8, align 8
  %59 = call i32 @nilfs_copy_back_pages(%struct.address_space* %57, %struct.address_space* %58)
  %60 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %5, align 8
  %61 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %60, i32 0, i32 1
  %62 = call i32 @nilfs_clear_dirty_pages(%struct.address_space* %61)
  %63 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %5, align 8
  %64 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %63, i32 0, i32 1
  %65 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %6, align 8
  %66 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %65, i32 0, i32 1
  %67 = call i32 @nilfs_copy_back_pages(%struct.address_space* %64, %struct.address_space* %66)
  %68 = load %struct.inode*, %struct.inode** %3, align 8
  %69 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %68)
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 @up_write(i32* %70)
  ret void
}

declare dso_local %struct.nilfs_inode_info* @NILFS_I(%struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @NILFS_MDT(%struct.inode*) #1

declare dso_local i32 @nilfs_bmap_commit_gcdat(i32, i32) #1

declare dso_local i32 @nilfs_clear_dirty_pages(%struct.address_space*) #1

declare dso_local i32 @nilfs_copy_back_pages(%struct.address_space*, %struct.address_space*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
