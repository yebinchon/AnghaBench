; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3acl.c_nfs3_get_cached_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3acl.c_nfs3_get_cached_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { i32 }
%struct.inode = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nfs_inode = type { %struct.posix_acl*, %struct.posix_acl* }

@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"NFS: nfs3_get_cached_acl(%s/%ld, %d) = %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.posix_acl* (%struct.inode*, i32)* @nfs3_get_cached_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.posix_acl* @nfs3_get_cached_acl(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfs_inode*, align 8
  %6 = alloca %struct.posix_acl*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.nfs_inode* @NFS_I(%struct.inode* %7)
  store %struct.nfs_inode* %8, %struct.nfs_inode** %5, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.posix_acl* @ERR_PTR(i32 %10)
  store %struct.posix_acl* %11, %struct.posix_acl** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 2
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %24 [
    i32 129, label %16
    i32 128, label %20
  ]

16:                                               ; preds = %2
  %17 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %18 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %17, i32 0, i32 1
  %19 = load %struct.posix_acl*, %struct.posix_acl** %18, align 8
  store %struct.posix_acl* %19, %struct.posix_acl** %6, align 8
  br label %25

20:                                               ; preds = %2
  %21 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %22 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %21, i32 0, i32 0
  %23 = load %struct.posix_acl*, %struct.posix_acl** %22, align 8
  store %struct.posix_acl* %23, %struct.posix_acl** %6, align 8
  br label %25

24:                                               ; preds = %2
  br label %37

25:                                               ; preds = %20, %16
  %26 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %27 = call i64 @IS_ERR(%struct.posix_acl* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* @EAGAIN, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.posix_acl* @ERR_PTR(i32 %31)
  store %struct.posix_acl* %32, %struct.posix_acl** %6, align 8
  br label %36

33:                                               ; preds = %25
  %34 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %35 = call %struct.posix_acl* @posix_acl_dup(%struct.posix_acl* %34)
  store %struct.posix_acl* %35, %struct.posix_acl** %6, align 8
  br label %36

36:                                               ; preds = %33, %29
  br label %37

37:                                               ; preds = %36, %24
  %38 = load %struct.inode*, %struct.inode** %3, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 2
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = load %struct.inode*, %struct.inode** %3, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.inode*, %struct.inode** %3, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %51 = call i32 @dprintk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48, i32 %49, %struct.posix_acl* %50)
  %52 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  ret %struct.posix_acl* %52
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local %struct.posix_acl* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @IS_ERR(%struct.posix_acl*) #1

declare dso_local %struct.posix_acl* @posix_acl_dup(%struct.posix_acl*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i32, %struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
