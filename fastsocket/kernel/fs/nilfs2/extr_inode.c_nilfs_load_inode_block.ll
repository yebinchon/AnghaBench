; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_inode.c_nilfs_load_inode_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_inode.c_nilfs_load_inode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sb_info = type { i32, i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_inode_info = type { %struct.buffer_head* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_load_inode_block(%struct.nilfs_sb_info* %0, %struct.inode* %1, %struct.buffer_head** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nilfs_sb_info*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca %struct.nilfs_inode_info*, align 8
  %9 = alloca i32, align 4
  store %struct.nilfs_sb_info* %0, %struct.nilfs_sb_info** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.buffer_head** %2, %struct.buffer_head*** %7, align 8
  %10 = load %struct.inode*, %struct.inode** %6, align 8
  %11 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %10)
  store %struct.nilfs_inode_info* %11, %struct.nilfs_inode_info** %8, align 8
  %12 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %5, align 8
  %13 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %8, align 8
  %16 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %15, i32 0, i32 0
  %17 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %18 = icmp eq %struct.buffer_head* %17, null
  br i1 %18, label %19, label %58

19:                                               ; preds = %3
  %20 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %5, align 8
  %21 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock(i32* %21)
  %23 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %5, align 8
  %24 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %30 = call i32 @nilfs_ifile_get_inode_block(i32 %25, i32 %28, %struct.buffer_head** %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %19
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %70

36:                                               ; preds = %19
  %37 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %5, align 8
  %38 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %37, i32 0, i32 0
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %8, align 8
  %41 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %40, i32 0, i32 0
  %42 = load %struct.buffer_head*, %struct.buffer_head** %41, align 8
  %43 = icmp eq %struct.buffer_head* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %46 = load %struct.buffer_head*, %struct.buffer_head** %45, align 8
  %47 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %8, align 8
  %48 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %47, i32 0, i32 0
  store %struct.buffer_head* %46, %struct.buffer_head** %48, align 8
  br label %57

49:                                               ; preds = %36
  %50 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %51 = load %struct.buffer_head*, %struct.buffer_head** %50, align 8
  %52 = call i32 @brelse(%struct.buffer_head* %51)
  %53 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %8, align 8
  %54 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %53, i32 0, i32 0
  %55 = load %struct.buffer_head*, %struct.buffer_head** %54, align 8
  %56 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  store %struct.buffer_head* %55, %struct.buffer_head** %56, align 8
  br label %57

57:                                               ; preds = %49, %44
  br label %63

58:                                               ; preds = %3
  %59 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %8, align 8
  %60 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %59, i32 0, i32 0
  %61 = load %struct.buffer_head*, %struct.buffer_head** %60, align 8
  %62 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  store %struct.buffer_head* %61, %struct.buffer_head** %62, align 8
  br label %63

63:                                               ; preds = %58, %57
  %64 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %65 = load %struct.buffer_head*, %struct.buffer_head** %64, align 8
  %66 = call i32 @get_bh(%struct.buffer_head* %65)
  %67 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %5, align 8
  %68 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %67, i32 0, i32 0
  %69 = call i32 @spin_unlock(i32* %68)
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %63, %34
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.nilfs_inode_info* @NILFS_I(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nilfs_ifile_get_inode_block(i32, i32, %struct.buffer_head**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
