; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_fscache.c_nfs_fscache_set_inode_cookie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_fscache.c_nfs_fscache_set_inode_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }

@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_fscache_set_inode_cookie(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %5 = load %struct.inode*, %struct.inode** %3, align 8
  %6 = call i64 @NFS_FSCACHE(%struct.inode* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %2
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call i32 @nfs_fscache_inode_lock(%struct.inode* %9)
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @O_ACCMODE, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @O_RDONLY, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %8
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = call i32 @nfs_fscache_disable_inode_cookie(%struct.inode* %19)
  br label %24

21:                                               ; preds = %8
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = call i32 @nfs_fscache_enable_inode_cookie(%struct.inode* %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = call i32 @nfs_fscache_inode_unlock(%struct.inode* %25)
  br label %27

27:                                               ; preds = %24, %2
  ret void
}

declare dso_local i64 @NFS_FSCACHE(%struct.inode*) #1

declare dso_local i32 @nfs_fscache_inode_lock(%struct.inode*) #1

declare dso_local i32 @nfs_fscache_disable_inode_cookie(%struct.inode*) #1

declare dso_local i32 @nfs_fscache_enable_inode_cookie(%struct.inode*) #1

declare dso_local i32 @nfs_fscache_inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
