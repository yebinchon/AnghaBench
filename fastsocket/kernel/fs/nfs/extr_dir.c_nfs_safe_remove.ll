; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_safe_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_safe_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.inode* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.inode* }
%struct.TYPE_6__ = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_9__ = type { i32 (%struct.inode*, %struct.TYPE_8__*)* }

@EBUSY = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"NFS: safe_remove(%s/%s)\0A\00", align 1
@DCACHE_NFSFS_RENAMED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*)* @nfs_safe_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_safe_remove(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %6 = load %struct.dentry*, %struct.dentry** %2, align 8
  %7 = getelementptr inbounds %struct.dentry, %struct.dentry* %6, i32 0, i32 2
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %10, %struct.inode** %3, align 8
  %11 = load %struct.dentry*, %struct.dentry** %2, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 3
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %4, align 8
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @VFS, align 4
  %17 = load %struct.dentry*, %struct.dentry** %2, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.dentry*, %struct.dentry** %2, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dfprintk(i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26)
  %28 = load %struct.dentry*, %struct.dentry** %2, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @DCACHE_NFSFS_RENAMED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %75

35:                                               ; preds = %1
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = icmp ne %struct.inode* %36, null
  br i1 %37, label %38, label %57

38:                                               ; preds = %35
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = call i32 @nfs_inode_return_delegation(%struct.inode* %39)
  %41 = load %struct.inode*, %struct.inode** %3, align 8
  %42 = call %struct.TYPE_9__* @NFS_PROTO(%struct.inode* %41)
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32 (%struct.inode*, %struct.TYPE_8__*)*, i32 (%struct.inode*, %struct.TYPE_8__*)** %43, align 8
  %45 = load %struct.inode*, %struct.inode** %3, align 8
  %46 = load %struct.dentry*, %struct.dentry** %2, align 8
  %47 = getelementptr inbounds %struct.dentry, %struct.dentry* %46, i32 0, i32 1
  %48 = call i32 %44(%struct.inode* %45, %struct.TYPE_8__* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %38
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = call i32 @nfs_drop_nlink(%struct.inode* %52)
  br label %54

54:                                               ; preds = %51, %38
  %55 = load %struct.inode*, %struct.inode** %4, align 8
  %56 = call i32 @nfs_mark_for_revalidate(%struct.inode* %55)
  br label %66

57:                                               ; preds = %35
  %58 = load %struct.inode*, %struct.inode** %3, align 8
  %59 = call %struct.TYPE_9__* @NFS_PROTO(%struct.inode* %58)
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32 (%struct.inode*, %struct.TYPE_8__*)*, i32 (%struct.inode*, %struct.TYPE_8__*)** %60, align 8
  %62 = load %struct.inode*, %struct.inode** %3, align 8
  %63 = load %struct.dentry*, %struct.dentry** %2, align 8
  %64 = getelementptr inbounds %struct.dentry, %struct.dentry* %63, i32 0, i32 1
  %65 = call i32 %61(%struct.inode* %62, %struct.TYPE_8__* %64)
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %57, %54
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @ENOENT, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.dentry*, %struct.dentry** %2, align 8
  %73 = call i32 @nfs_dentry_handle_enoent(%struct.dentry* %72)
  br label %74

74:                                               ; preds = %71, %66
  br label %75

75:                                               ; preds = %74, %34
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @dfprintk(i32, i8*, i32, i32) #1

declare dso_local i32 @nfs_inode_return_delegation(%struct.inode*) #1

declare dso_local %struct.TYPE_9__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @nfs_drop_nlink(%struct.inode*) #1

declare dso_local i32 @nfs_mark_for_revalidate(%struct.inode*) #1

declare dso_local i32 @nfs_dentry_handle_enoent(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
