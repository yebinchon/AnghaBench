; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_dir.c_smb_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_dir.c_smb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.nameidata = type { i32 }
%struct.smb_sb_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iattr = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"creating %s/%s, mode=%d\0A\00", align 1
@SMB_CAP_UNIX = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%s/%s failed, error=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, %struct.nameidata*)* @smb_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, %struct.nameidata* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nameidata*, align 8
  %9 = alloca %struct.smb_sb_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iattr, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nameidata* %3, %struct.nameidata** %8, align 8
  %13 = load %struct.dentry*, %struct.dentry** %6, align 8
  %14 = call %struct.smb_sb_info* @server_from_dentry(%struct.dentry* %13)
  store %struct.smb_sb_info* %14, %struct.smb_sb_info** %9, align 8
  %15 = load %struct.dentry*, %struct.dentry** %6, align 8
  %16 = call i32 @DENTRY_PATH(%struct.dentry* %15)
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @VERBOSE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = call i32 (...) @lock_kernel()
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = call i32 @smb_invalid_dir_cache(%struct.inode* %20)
  %22 = load %struct.dentry*, %struct.dentry** %6, align 8
  %23 = call i32 (...) @get_seconds()
  %24 = call i32 @smb_proc_create(%struct.dentry* %22, i32 0, i32 %23, i32* %10)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %46, label %27

27:                                               ; preds = %4
  %28 = load %struct.smb_sb_info*, %struct.smb_sb_info** %9, align 8
  %29 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SMB_CAP_UNIX, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load i32, i32* @ATTR_MODE, align 4
  %37 = getelementptr inbounds %struct.iattr, %struct.iattr* %12, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = getelementptr inbounds %struct.iattr, %struct.iattr* %12, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load %struct.dentry*, %struct.dentry** %6, align 8
  %41 = call i32 @smb_proc_setattr_unix(%struct.dentry* %40, %struct.iattr* %12, i32 0, i32 0)
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %35, %27
  %43 = load %struct.dentry*, %struct.dentry** %6, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @smb_instantiate(%struct.dentry* %43, i32 %44, i32 1)
  store i32 %45, i32* %11, align 4
  br label %51

46:                                               ; preds = %4
  %47 = load %struct.dentry*, %struct.dentry** %6, align 8
  %48 = call i32 @DENTRY_PATH(%struct.dentry* %47)
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @PARANOIA(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %46, %42
  %52 = call i32 (...) @unlock_kernel()
  %53 = load i32, i32* %11, align 4
  ret i32 %53
}

declare dso_local %struct.smb_sb_info* @server_from_dentry(%struct.dentry*) #1

declare dso_local i32 @VERBOSE(i8*, i32, i32) #1

declare dso_local i32 @DENTRY_PATH(%struct.dentry*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @smb_invalid_dir_cache(%struct.inode*) #1

declare dso_local i32 @smb_proc_create(%struct.dentry*, i32, i32, i32*) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local i32 @smb_proc_setattr_unix(%struct.dentry*, %struct.iattr*, i32, i32) #1

declare dso_local i32 @smb_instantiate(%struct.dentry*, i32, i32) #1

declare dso_local i32 @PARANOIA(i8*, i32, i32) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
