; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_da_release_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_da_release_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.ext4_sb_info = type { i32 }
%struct.ext4_inode_info = type { i32, i32, i32, i64 }

@KERN_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"ext4_da_release_space: ino %lu, to_free %d with only %d reserved data blocks\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32)* @ext4_da_release_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_da_release_space(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ext4_sb_info*, align 8
  %6 = alloca %struct.ext4_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ext4_sb_info* @EXT4_SB(i32 %9)
  store %struct.ext4_sb_info* %10, %struct.ext4_sb_info** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %11)
  store %struct.ext4_inode_info* %12, %struct.ext4_inode_info** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %79

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %17)
  %19 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %18, i32 0, i32 2
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %23 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %16
  %30 = load %struct.inode*, %struct.inode** %3, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @KERN_NOTICE, align 4
  %34 = load %struct.inode*, %struct.inode** %3, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %39 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ext4_msg(i32 %32, i32 %33, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37, i32 %40)
  %42 = call i32 @WARN_ON(i32 1)
  %43 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %44 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %29, %16
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %49 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %53 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %46
  %57 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %58 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %57, i32 0, i32 0
  %59 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %60 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @percpu_counter_sub(i32* %58, i32 %61)
  %63 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %64 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  %65 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %66 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %65, i32 0, i32 3
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %56, %46
  %68 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %69 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %68, i32 0, i32 0
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @percpu_counter_sub(i32* %69, i32 %70)
  %72 = load %struct.inode*, %struct.inode** %3, align 8
  %73 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %72)
  %74 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %73, i32 0, i32 2
  %75 = call i32 @spin_unlock(i32* %74)
  %76 = load %struct.inode*, %struct.inode** %3, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @vfs_dq_release_reservation_block(%struct.inode* %76, i32 %77)
  br label %79

79:                                               ; preds = %67, %15
  ret void
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(i32) #1

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext4_msg(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @percpu_counter_sub(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @vfs_dq_release_reservation_block(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
