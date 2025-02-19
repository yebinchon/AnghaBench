; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_super.c_nilfs_clear_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_super.c_nilfs_clear_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nilfs_inode_info = type { i32, i32, i32, i32*, i32 }

@NILFS_I_BMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @nilfs_clear_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_clear_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.nilfs_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %4)
  store %struct.nilfs_inode_info* %5, %struct.nilfs_inode_info** %3, align 8
  %6 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %3, align 8
  %7 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %6, i32 0, i32 4
  %8 = call i32 @list_empty(i32* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %3, align 8
  %14 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @brelse(i32* %15)
  %17 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %3, align 8
  %18 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %17, i32 0, i32 3
  store i32* null, i32** %18, align 8
  %19 = load i32, i32* @NILFS_I_BMAP, align 4
  %20 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %3, align 8
  %21 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %20, i32 0, i32 2
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %3, align 8
  %26 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @nilfs_bmap_clear(i32 %27)
  br label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %3, align 8
  %31 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %30, i32 0, i32 0
  %32 = call i32 @nilfs_btnode_cache_clear(i32* %31)
  ret void
}

declare dso_local %struct.nilfs_inode_info* @NILFS_I(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @brelse(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nilfs_bmap_clear(i32) #1

declare dso_local i32 @nilfs_btnode_cache_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
