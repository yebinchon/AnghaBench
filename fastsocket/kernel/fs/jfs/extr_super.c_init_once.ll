; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_super.c_init_once.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_super.c_init_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jfs_inode_info = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @init_once to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_once(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.jfs_inode_info*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.jfs_inode_info*
  store %struct.jfs_inode_info* %5, %struct.jfs_inode_info** %3, align 8
  %6 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %3, align 8
  %7 = call i32 @memset(%struct.jfs_inode_info* %6, i32 0, i32 28)
  %8 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %3, align 8
  %9 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %8, i32 0, i32 6
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  %11 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %3, align 8
  %12 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %11, i32 0, i32 5
  %13 = call i32 @init_rwsem(i32* %12)
  %14 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %3, align 8
  %15 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %14, i32 0, i32 4
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %3, align 8
  %18 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %17, i32 0, i32 3
  %19 = call i32 @init_rwsem(i32* %18)
  %20 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %3, align 8
  %21 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %20, i32 0, i32 2
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %3, align 8
  %24 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %23, i32 0, i32 0
  store i32 -1, i32* %24, align 4
  %25 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %3, align 8
  %26 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %25, i32 0, i32 1
  %27 = call i32 @inode_init_once(i32* %26)
  ret void
}

declare dso_local i32 @memset(%struct.jfs_inode_info*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @inode_init_once(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
