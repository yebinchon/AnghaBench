; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3acl.c_nfs3_cache_acls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3acl.c_nfs3_cache_acls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.posix_acl = type { i32 }
%struct.nfs_inode = type { i8*, i8* }

@.str = private unnamed_addr constant [33 x i8] c"nfs3_cache_acls(%s/%ld, %p, %p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.posix_acl*, %struct.posix_acl*)* @nfs3_cache_acls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs3_cache_acls(%struct.inode* %0, %struct.posix_acl* %1, %struct.posix_acl* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.posix_acl*, align 8
  %6 = alloca %struct.posix_acl*, align 8
  %7 = alloca %struct.nfs_inode*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.posix_acl* %1, %struct.posix_acl** %5, align 8
  store %struct.posix_acl* %2, %struct.posix_acl** %6, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call %struct.nfs_inode* @NFS_I(%struct.inode* %8)
  store %struct.nfs_inode* %9, %struct.nfs_inode** %7, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %19 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %20 = call i32 @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17, %struct.posix_acl* %18, %struct.posix_acl* %19)
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = call %struct.nfs_inode* @NFS_I(%struct.inode* %24)
  %26 = call i32 @__nfs3_forget_cached_acls(%struct.nfs_inode* %25)
  %27 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %28 = call i32 @IS_ERR(%struct.posix_acl* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %3
  %31 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %32 = call i8* @posix_acl_dup(%struct.posix_acl* %31)
  %33 = load %struct.nfs_inode*, %struct.nfs_inode** %7, align 8
  %34 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  br label %35

35:                                               ; preds = %30, %3
  %36 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %37 = call i32 @IS_ERR(%struct.posix_acl* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %41 = call i8* @posix_acl_dup(%struct.posix_acl* %40)
  %42 = load %struct.nfs_inode*, %struct.nfs_inode** %7, align 8
  %43 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %39, %35
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock(i32* %46)
  ret void
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i32 @dprintk(i8*, i32, i32, %struct.posix_acl*, %struct.posix_acl*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__nfs3_forget_cached_acls(%struct.nfs_inode*) #1

declare dso_local i32 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i8* @posix_acl_dup(%struct.posix_acl*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
