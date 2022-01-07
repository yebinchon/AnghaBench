; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_read_cached_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_read_cached_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_inode = type { %struct.nfs4_cached_acl* }
%struct.nfs4_cached_acl = type { i64, i64, i32 }

@ENOENT = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i64)* @nfs4_read_cached_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_read_cached_acl(%struct.inode* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nfs_inode*, align 8
  %8 = alloca %struct.nfs4_cached_acl*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call %struct.nfs_inode* @NFS_I(%struct.inode* %10)
  store %struct.nfs_inode* %11, %struct.nfs_inode** %7, align 8
  %12 = load i32, i32* @ENOENT, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %9, align 4
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.nfs_inode*, %struct.nfs_inode** %7, align 8
  %18 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %17, i32 0, i32 0
  %19 = load %struct.nfs4_cached_acl*, %struct.nfs4_cached_acl** %18, align 8
  store %struct.nfs4_cached_acl* %19, %struct.nfs4_cached_acl** %8, align 8
  %20 = load %struct.nfs4_cached_acl*, %struct.nfs4_cached_acl** %8, align 8
  %21 = icmp eq %struct.nfs4_cached_acl* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %56

23:                                               ; preds = %3
  %24 = load i8*, i8** %5, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %51

27:                                               ; preds = %23
  %28 = load %struct.nfs4_cached_acl*, %struct.nfs4_cached_acl** %8, align 8
  %29 = getelementptr inbounds %struct.nfs4_cached_acl, %struct.nfs4_cached_acl* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %56

33:                                               ; preds = %27
  %34 = load i32, i32* @ERANGE, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %9, align 4
  %36 = load %struct.nfs4_cached_acl*, %struct.nfs4_cached_acl** %8, align 8
  %37 = getelementptr inbounds %struct.nfs4_cached_acl, %struct.nfs4_cached_acl* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %56

42:                                               ; preds = %33
  %43 = load i8*, i8** %5, align 8
  %44 = load %struct.nfs4_cached_acl*, %struct.nfs4_cached_acl** %8, align 8
  %45 = getelementptr inbounds %struct.nfs4_cached_acl, %struct.nfs4_cached_acl* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.nfs4_cached_acl*, %struct.nfs4_cached_acl** %8, align 8
  %48 = getelementptr inbounds %struct.nfs4_cached_acl, %struct.nfs4_cached_acl* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @memcpy(i8* %43, i32 %46, i64 %49)
  br label %51

51:                                               ; preds = %42, %26
  %52 = load %struct.nfs4_cached_acl*, %struct.nfs4_cached_acl** %8, align 8
  %53 = getelementptr inbounds %struct.nfs4_cached_acl, %struct.nfs4_cached_acl* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %51, %41, %32, %22
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock(i32* %58)
  %60 = load i32, i32* %9, align 4
  ret i32 %60
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
