; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/bfs/extr_inode.c_bfs_put_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/bfs/extr_inode.c_bfs_put_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32*, i64 }
%struct.bfs_sb_info = type { %struct.bfs_sb_info*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @bfs_put_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfs_put_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.bfs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.bfs_sb_info* @BFS_SB(%struct.super_block* %4)
  store %struct.bfs_sb_info* %5, %struct.bfs_sb_info** %3, align 8
  %6 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %3, align 8
  %7 = icmp ne %struct.bfs_sb_info* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %35

9:                                                ; preds = %1
  %10 = call i32 (...) @lock_kernel()
  %11 = load %struct.super_block*, %struct.super_block** %2, align 8
  %12 = getelementptr inbounds %struct.super_block, %struct.super_block* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load %struct.super_block*, %struct.super_block** %2, align 8
  %17 = call i32 @bfs_write_super(%struct.super_block* %16)
  br label %18

18:                                               ; preds = %15, %9
  %19 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %3, align 8
  %20 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @brelse(i32 %21)
  %23 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %3, align 8
  %24 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %23, i32 0, i32 1
  %25 = call i32 @mutex_destroy(i32* %24)
  %26 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %3, align 8
  %27 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %26, i32 0, i32 0
  %28 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %27, align 8
  %29 = call i32 @kfree(%struct.bfs_sb_info* %28)
  %30 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %3, align 8
  %31 = call i32 @kfree(%struct.bfs_sb_info* %30)
  %32 = load %struct.super_block*, %struct.super_block** %2, align 8
  %33 = getelementptr inbounds %struct.super_block, %struct.super_block* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  %34 = call i32 (...) @unlock_kernel()
  br label %35

35:                                               ; preds = %18, %8
  ret void
}

declare dso_local %struct.bfs_sb_info* @BFS_SB(%struct.super_block*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @bfs_write_super(%struct.super_block*) #1

declare dso_local i32 @brelse(i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.bfs_sb_info*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
