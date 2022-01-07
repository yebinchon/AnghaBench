; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_getattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.kstat = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NFS_INO_INVALID_ATIME = common dso_local global i32 0, align 4
@MNT_NOATIME = common dso_local global i32 0, align 4
@MNT_NODIRATIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_getattr(%struct.vfsmount* %0, %struct.dentry* %1, %struct.kstat* %2) #0 {
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.kstat*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vfsmount* %0, %struct.vfsmount** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.kstat* %2, %struct.kstat** %6, align 8
  %10 = load %struct.dentry*, %struct.dentry** %5, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 0
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %12, %struct.inode** %7, align 8
  %13 = load %struct.inode*, %struct.inode** %7, align 8
  %14 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NFS_INO_INVALID_ATIME, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @S_ISREG(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %3
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @filemap_write_and_wait(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %80

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %3
  %34 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %35 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MNT_NOATIME, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %33
  %41 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %42 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MNT_NODIRATIME, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @S_ISDIR(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47, %33
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %53, %47, %40
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.inode*, %struct.inode** %7, align 8
  %59 = call i32 @NFS_SERVER(%struct.inode* %58)
  %60 = load %struct.inode*, %struct.inode** %7, align 8
  %61 = call i32 @__nfs_revalidate_inode(i32 %59, %struct.inode* %60)
  store i32 %61, i32* %9, align 4
  br label %67

62:                                               ; preds = %54
  %63 = load %struct.inode*, %struct.inode** %7, align 8
  %64 = call i32 @NFS_SERVER(%struct.inode* %63)
  %65 = load %struct.inode*, %struct.inode** %7, align 8
  %66 = call i32 @nfs_revalidate_inode(i32 %64, %struct.inode* %65)
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %62, %57
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %67
  %71 = load %struct.inode*, %struct.inode** %7, align 8
  %72 = load %struct.kstat*, %struct.kstat** %6, align 8
  %73 = call i32 @generic_fillattr(%struct.inode* %71, %struct.kstat* %72)
  %74 = load %struct.inode*, %struct.inode** %7, align 8
  %75 = call i32 @NFS_FILEID(%struct.inode* %74)
  %76 = call i32 @nfs_compat_user_ino64(i32 %75)
  %77 = load %struct.kstat*, %struct.kstat** %6, align 8
  %78 = getelementptr inbounds %struct.kstat, %struct.kstat* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %70, %67
  br label %80

80:                                               ; preds = %79, %31
  %81 = load i32, i32* %9, align 4
  ret i32 %81
}

declare dso_local %struct.TYPE_2__* @NFS_I(%struct.inode*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @filemap_write_and_wait(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @__nfs_revalidate_inode(i32, %struct.inode*) #1

declare dso_local i32 @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @nfs_revalidate_inode(i32, %struct.inode*) #1

declare dso_local i32 @generic_fillattr(%struct.inode*, %struct.kstat*) #1

declare dso_local i32 @nfs_compat_user_ino64(i32) #1

declare dso_local i32 @NFS_FILEID(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
