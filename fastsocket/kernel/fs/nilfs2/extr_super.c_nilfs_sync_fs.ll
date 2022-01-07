; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_super.c_nilfs_sync_fs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_super.c_nilfs_sync_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i64 }
%struct.nilfs_sb_info = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @nilfs_sync_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_sync_fs(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nilfs_sb_info*, align 8
  %6 = alloca %struct.the_nilfs*, align 8
  %7 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = call %struct.nilfs_sb_info* @NILFS_SB(%struct.super_block* %8)
  store %struct.nilfs_sb_info* %9, %struct.nilfs_sb_info** %5, align 8
  %10 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %5, align 8
  %11 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %10, i32 0, i32 0
  %12 = load %struct.the_nilfs*, %struct.the_nilfs** %11, align 8
  store %struct.the_nilfs* %12, %struct.the_nilfs** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.super_block*, %struct.super_block** %3, align 8
  %17 = call i32 @nilfs_construct_segment(%struct.super_block* %16)
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %15, %2
  %19 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %20 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %19, i32 0, i32 0
  %21 = call i32 @down_write(i32* %20)
  %22 = load %struct.super_block*, %struct.super_block** %3, align 8
  %23 = getelementptr inbounds %struct.super_block, %struct.super_block* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %5, align 8
  %28 = call i32 @nilfs_commit_super(%struct.nilfs_sb_info* %27, i32 1)
  br label %29

29:                                               ; preds = %26, %18
  %30 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %31 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %30, i32 0, i32 0
  %32 = call i32 @up_write(i32* %31)
  %33 = load i32, i32* %7, align 4
  ret i32 %33
}

declare dso_local %struct.nilfs_sb_info* @NILFS_SB(%struct.super_block*) #1

declare dso_local i32 @nilfs_construct_segment(%struct.super_block*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @nilfs_commit_super(%struct.nilfs_sb_info*, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
