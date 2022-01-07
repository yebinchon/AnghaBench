; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_mdt.c_nilfs_mdt_new_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_mdt.c_nilfs_mdt_new_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.address_space*, i32, i32, i32, i64, i32, i32, i64, i32*, i64, i32*, i32*, i32*, i32, i64, i64, i64, i64, i32, %struct.nilfs_mdt_info*, i32, i32, i32, i64, i32, %struct.super_block*, %struct.address_space }
%struct.nilfs_mdt_info = type { i32, %struct.the_nilfs* }
%struct.address_space = type { i32, i32*, i64, i32* }
%struct.the_nilfs = type { i32, i32 }
%struct.super_block = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @nilfs_mdt_new_common(%struct.the_nilfs* %0, %struct.super_block* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.the_nilfs*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.address_space*, align 8
  %12 = alloca %struct.nilfs_mdt_info*, align 8
  store %struct.the_nilfs* %0, %struct.the_nilfs** %6, align 8
  store %struct.super_block* %1, %struct.super_block** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %14 = call %struct.inode* @nilfs_alloc_inode_common(%struct.the_nilfs* %13)
  store %struct.inode* %14, %struct.inode** %10, align 8
  %15 = load %struct.inode*, %struct.inode** %10, align 8
  %16 = icmp ne %struct.inode* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store %struct.inode* null, %struct.inode** %5, align 8
  br label %87

18:                                               ; preds = %4
  %19 = load %struct.inode*, %struct.inode** %10, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 27
  store %struct.address_space* %20, %struct.address_space** %11, align 8
  %21 = load i32, i32* @GFP_NOFS, align 4
  %22 = call %struct.nilfs_mdt_info* @kzalloc(i32 16, i32 %21)
  store %struct.nilfs_mdt_info* %22, %struct.nilfs_mdt_info** %12, align 8
  %23 = load %struct.nilfs_mdt_info*, %struct.nilfs_mdt_info** %12, align 8
  %24 = icmp ne %struct.nilfs_mdt_info* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load %struct.inode*, %struct.inode** %10, align 8
  %27 = call i32 @nilfs_destroy_inode(%struct.inode* %26)
  store %struct.inode* null, %struct.inode** %5, align 8
  br label %87

28:                                               ; preds = %18
  %29 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %30 = load %struct.nilfs_mdt_info*, %struct.nilfs_mdt_info** %12, align 8
  %31 = getelementptr inbounds %struct.nilfs_mdt_info, %struct.nilfs_mdt_info* %30, i32 0, i32 1
  store %struct.the_nilfs* %29, %struct.the_nilfs** %31, align 8
  %32 = load %struct.nilfs_mdt_info*, %struct.nilfs_mdt_info** %12, align 8
  %33 = getelementptr inbounds %struct.nilfs_mdt_info, %struct.nilfs_mdt_info* %32, i32 0, i32 0
  %34 = call i32 @init_rwsem(i32* %33)
  %35 = load %struct.super_block*, %struct.super_block** %7, align 8
  %36 = load %struct.inode*, %struct.inode** %10, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 26
  store %struct.super_block* %35, %struct.super_block** %37, align 8
  %38 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %39 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.inode*, %struct.inode** %10, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 25
  store i32 %40, i32* %42, align 8
  %43 = load %struct.inode*, %struct.inode** %10, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 24
  store i64 0, i64* %44, align 8
  %45 = load %struct.inode*, %struct.inode** %10, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 23
  %47 = call i32 @atomic_set(i32* %46, i32 1)
  %48 = load %struct.inode*, %struct.inode** %10, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.inode*, %struct.inode** %10, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 22
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @S_IFREG, align 4
  %54 = load %struct.inode*, %struct.inode** %10, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 21
  store i32 %53, i32* %55, align 8
  %56 = load %struct.nilfs_mdt_info*, %struct.nilfs_mdt_info** %12, align 8
  %57 = load %struct.inode*, %struct.inode** %10, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 20
  store %struct.nilfs_mdt_info* %56, %struct.nilfs_mdt_info** %58, align 8
  %59 = load %struct.inode*, %struct.inode** %10, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 4
  %61 = call i32 @spin_lock_init(i32* %60)
  %62 = load %struct.inode*, %struct.inode** %10, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 3
  %64 = call i32 @mutex_init(i32* %63)
  %65 = load %struct.inode*, %struct.inode** %10, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 2
  %67 = call i32 @init_rwsem(i32* %66)
  %68 = load %struct.address_space*, %struct.address_space** %11, align 8
  %69 = getelementptr inbounds %struct.address_space, %struct.address_space* %68, i32 0, i32 3
  store i32* null, i32** %69, align 8
  %70 = load %struct.address_space*, %struct.address_space** %11, align 8
  %71 = getelementptr inbounds %struct.address_space, %struct.address_space* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = load %struct.address_space*, %struct.address_space** %11, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @mapping_set_gfp_mask(%struct.address_space* %72, i32 %73)
  %75 = load %struct.address_space*, %struct.address_space** %11, align 8
  %76 = getelementptr inbounds %struct.address_space, %struct.address_space* %75, i32 0, i32 1
  store i32* null, i32** %76, align 8
  %77 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %78 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.address_space*, %struct.address_space** %11, align 8
  %81 = getelementptr inbounds %struct.address_space, %struct.address_space* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.address_space*, %struct.address_space** %11, align 8
  %83 = load %struct.inode*, %struct.inode** %10, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 1
  store %struct.address_space* %82, %struct.address_space** %84, align 8
  br label %85

85:                                               ; preds = %28
  %86 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %86, %struct.inode** %5, align 8
  br label %87

87:                                               ; preds = %85, %25, %17
  %88 = load %struct.inode*, %struct.inode** %5, align 8
  ret %struct.inode* %88
}

declare dso_local %struct.inode* @nilfs_alloc_inode_common(%struct.the_nilfs*) #1

declare dso_local %struct.nilfs_mdt_info* @kzalloc(i32, i32) #1

declare dso_local i32 @nilfs_destroy_inode(%struct.inode*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mapping_set_gfp_mask(%struct.address_space*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
