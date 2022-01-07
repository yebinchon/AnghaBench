; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_da_reserve_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_da_reserve_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_sb_info = type { i32 }
%struct.ext4_inode_info = type { i64, i32, i32 }

@EDQUOT = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @ext4_da_reserve_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_da_reserve_space(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext4_sb_info*, align 8
  %8 = alloca %struct.ext4_inode_info*, align 8
  %9 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.ext4_sb_info* @EXT4_SB(i32 %12)
  store %struct.ext4_sb_info* %13, %struct.ext4_sb_info** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %14)
  store %struct.ext4_inode_info* %15, %struct.ext4_inode_info** %8, align 8
  br label %16

16:                                               ; preds = %46, %2
  %17 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %18 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %17, i32 0, i32 1
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @ext4_calc_metadata_amount(%struct.inode* %20, i32 %21)
  store i64 %22, i64* %9, align 8
  %23 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %24 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %23, i32 0, i32 1
  %25 = call i32 @spin_unlock(i32* %24)
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = call i64 @vfs_dq_reserve_block(%struct.inode* %26, i32 1)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %16
  %30 = load i32, i32* @EDQUOT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %67

32:                                               ; preds = %16
  %33 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %34 = load i64, i64* %9, align 8
  %35 = add i64 %34, 1
  %36 = call i64 @ext4_claim_free_blocks(%struct.ext4_sb_info* %33, i64 %35, i32 0)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = call i32 @vfs_dq_release_reservation_block(%struct.inode* %39, i32 1)
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @ext4_should_retry_alloc(i32 %43, i32* %6)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = call i32 (...) @yield()
  br label %16

48:                                               ; preds = %38
  %49 = load i32, i32* @ENOSPC, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %67

51:                                               ; preds = %32
  %52 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %53 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %52, i32 0, i32 1
  %54 = call i32 @spin_lock(i32* %53)
  %55 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %56 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %61 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, %59
  store i64 %63, i64* %61, align 8
  %64 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %65 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %64, i32 0, i32 1
  %66 = call i32 @spin_unlock(i32* %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %51, %48, %29
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(i32) #1

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @ext4_calc_metadata_amount(%struct.inode*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @vfs_dq_reserve_block(%struct.inode*, i32) #1

declare dso_local i64 @ext4_claim_free_blocks(%struct.ext4_sb_info*, i64, i32) #1

declare dso_local i32 @vfs_dq_release_reservation_block(%struct.inode*, i32) #1

declare dso_local i64 @ext4_should_retry_alloc(i32, i32*) #1

declare dso_local i32 @yield(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
