; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_read_write.c_ecryptfs_read_lower.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_read_write.c_ecryptfs_read_lower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ecryptfs_inode_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecryptfs_read_lower(i8* %0, i32 %1, i64 %2, %struct.inode* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ecryptfs_inode_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store %struct.inode* %3, %struct.inode** %8, align 8
  %12 = load %struct.inode*, %struct.inode** %8, align 8
  %13 = call %struct.ecryptfs_inode_info* @ecryptfs_inode_to_private(%struct.inode* %12)
  store %struct.ecryptfs_inode_info* %13, %struct.ecryptfs_inode_info** %9, align 8
  %14 = load %struct.ecryptfs_inode_info*, %struct.ecryptfs_inode_info** %9, align 8
  %15 = getelementptr inbounds %struct.ecryptfs_inode_info, %struct.ecryptfs_inode_info* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.ecryptfs_inode_info*, %struct.ecryptfs_inode_info** %9, align 8
  %18 = getelementptr inbounds %struct.ecryptfs_inode_info, %struct.ecryptfs_inode_info* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.ecryptfs_inode_info*, %struct.ecryptfs_inode_info** %9, align 8
  %26 = getelementptr inbounds %struct.ecryptfs_inode_info, %struct.ecryptfs_inode_info* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 4
  %29 = call i32 (...) @get_fs()
  store i32 %29, i32* %10, align 4
  %30 = call i32 (...) @get_ds()
  %31 = call i32 @set_fs(i32 %30)
  %32 = load %struct.ecryptfs_inode_info*, %struct.ecryptfs_inode_info** %9, align 8
  %33 = getelementptr inbounds %struct.ecryptfs_inode_info, %struct.ecryptfs_inode_info* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.ecryptfs_inode_info*, %struct.ecryptfs_inode_info** %9, align 8
  %38 = getelementptr inbounds %struct.ecryptfs_inode_info, %struct.ecryptfs_inode_info* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @vfs_read(%struct.TYPE_2__* %34, i8* %35, i64 %36, i32* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @set_fs(i32 %42)
  %44 = load %struct.ecryptfs_inode_info*, %struct.ecryptfs_inode_info** %9, align 8
  %45 = getelementptr inbounds %struct.ecryptfs_inode_info, %struct.ecryptfs_inode_info* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* %11, align 4
  ret i32 %47
}

declare dso_local %struct.ecryptfs_inode_info* @ecryptfs_inode_to_private(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @get_fs(...) #1

declare dso_local i32 @set_fs(i32) #1

declare dso_local i32 @get_ds(...) #1

declare dso_local i32 @vfs_read(%struct.TYPE_2__*, i8*, i64, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
