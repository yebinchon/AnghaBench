; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_dir.c_smb_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_dir.c_smb_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.nameidata = type { i32 }
%struct.smb_fattr = type { i32 }
%struct.smb_sb_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ENAMETOOLONG = common dso_local global i32 0, align 4
@SMB_MAXNAMELEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@SMB_MOUNT_CASE = common dso_local global i32 0, align 4
@smbfs_dentry_operations_case = common dso_local global i32 0, align 4
@smbfs_dentry_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)* @smb_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @smb_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.nameidata*, align 8
  %7 = alloca %struct.smb_fattr, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.smb_sb_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.nameidata* %2, %struct.nameidata** %6, align 8
  %11 = load i32, i32* @ENAMETOOLONG, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %9, align 4
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SMB_MAXNAMELEN, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %87

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %9, align 4
  %23 = load %struct.dentry*, %struct.dentry** %5, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.dentry*, %struct.dentry** %5, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @memchr(i32 %26, i8 signext 92, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  br label %87

34:                                               ; preds = %20
  %35 = call i32 (...) @lock_kernel()
  %36 = load %struct.dentry*, %struct.dentry** %5, align 8
  %37 = call i32 @smb_proc_getattr(%struct.dentry* %36, %struct.smb_fattr* %7)
  store i32 %37, i32* %9, align 4
  store %struct.inode* null, %struct.inode** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @ENOENT, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %61

43:                                               ; preds = %34
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %85, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @EACCES, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %9, align 4
  %49 = load %struct.dentry*, %struct.dentry** %5, align 8
  %50 = getelementptr inbounds %struct.dentry, %struct.dentry* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @iunique(i32 %51, i32 2)
  %53 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %7, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.inode* @smb_iget(i32 %56, %struct.smb_fattr* %7)
  store %struct.inode* %57, %struct.inode** %8, align 8
  %58 = load %struct.inode*, %struct.inode** %8, align 8
  %59 = icmp ne %struct.inode* %58, null
  br i1 %59, label %60, label %84

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %60, %42
  %62 = load %struct.dentry*, %struct.dentry** %5, align 8
  %63 = call %struct.smb_sb_info* @server_from_dentry(%struct.dentry* %62)
  store %struct.smb_sb_info* %63, %struct.smb_sb_info** %10, align 8
  %64 = load %struct.smb_sb_info*, %struct.smb_sb_info** %10, align 8
  %65 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SMB_MOUNT_CASE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %61
  %73 = load %struct.dentry*, %struct.dentry** %5, align 8
  %74 = getelementptr inbounds %struct.dentry, %struct.dentry* %73, i32 0, i32 0
  store i32* @smbfs_dentry_operations_case, i32** %74, align 8
  br label %78

75:                                               ; preds = %61
  %76 = load %struct.dentry*, %struct.dentry** %5, align 8
  %77 = getelementptr inbounds %struct.dentry, %struct.dentry* %76, i32 0, i32 0
  store i32* @smbfs_dentry_operations, i32** %77, align 8
  br label %78

78:                                               ; preds = %75, %72
  %79 = load %struct.dentry*, %struct.dentry** %5, align 8
  %80 = load %struct.inode*, %struct.inode** %8, align 8
  %81 = call i32 @d_add(%struct.dentry* %79, %struct.inode* %80)
  %82 = load %struct.dentry*, %struct.dentry** %5, align 8
  %83 = call i32 @smb_renew_times(%struct.dentry* %82)
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %78, %46
  br label %85

85:                                               ; preds = %84, %43
  %86 = call i32 (...) @unlock_kernel()
  br label %87

87:                                               ; preds = %85, %33, %19
  %88 = load i32, i32* %9, align 4
  %89 = call %struct.dentry* @ERR_PTR(i32 %88)
  ret %struct.dentry* %89
}

declare dso_local i64 @memchr(i32, i8 signext, i64) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @smb_proc_getattr(%struct.dentry*, %struct.smb_fattr*) #1

declare dso_local i32 @iunique(i32, i32) #1

declare dso_local %struct.inode* @smb_iget(i32, %struct.smb_fattr*) #1

declare dso_local %struct.smb_sb_info* @server_from_dentry(%struct.dentry*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @smb_renew_times(%struct.dentry*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
