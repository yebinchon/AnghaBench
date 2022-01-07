; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_materialise_dentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_materialise_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.fuse_conn = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*, %struct.inode*)* @fuse_materialise_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @fuse_materialise_dentry(%struct.dentry* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.fuse_conn*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = icmp ne %struct.inode* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @S_ISDIR(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %9
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %16)
  store %struct.fuse_conn* %17, %struct.fuse_conn** %6, align 8
  %18 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %19 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.dentry*, %struct.dentry** %3, align 8
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = call %struct.dentry* @d_materialise_unique(%struct.dentry* %21, %struct.inode* %22)
  store %struct.dentry* %23, %struct.dentry** %5, align 8
  %24 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %25 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  br label %31

27:                                               ; preds = %9, %2
  %28 = load %struct.dentry*, %struct.dentry** %3, align 8
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = call %struct.dentry* @d_materialise_unique(%struct.dentry* %28, %struct.inode* %29)
  store %struct.dentry* %30, %struct.dentry** %5, align 8
  br label %31

31:                                               ; preds = %27, %15
  %32 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %32
}

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dentry* @d_materialise_unique(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
