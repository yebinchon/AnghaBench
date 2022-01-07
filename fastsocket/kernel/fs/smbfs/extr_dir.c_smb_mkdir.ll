; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_dir.c_smb_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_dir.c_smb_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.smb_sb_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iattr = type { i32, i32 }

@SMB_CAP_UNIX = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @smb_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.smb_sb_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iattr, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.dentry*, %struct.dentry** %5, align 8
  %11 = call %struct.smb_sb_info* @server_from_dentry(%struct.dentry* %10)
  store %struct.smb_sb_info* %11, %struct.smb_sb_info** %7, align 8
  %12 = call i32 (...) @lock_kernel()
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call i32 @smb_invalid_dir_cache(%struct.inode* %13)
  %15 = load %struct.dentry*, %struct.dentry** %5, align 8
  %16 = call i32 @smb_proc_mkdir(%struct.dentry* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %3
  %20 = load %struct.smb_sb_info*, %struct.smb_sb_info** %7, align 8
  %21 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SMB_CAP_UNIX, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load i32, i32* @ATTR_MODE, align 4
  %29 = getelementptr inbounds %struct.iattr, %struct.iattr* %9, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = getelementptr inbounds %struct.iattr, %struct.iattr* %9, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load %struct.dentry*, %struct.dentry** %5, align 8
  %33 = call i32 @smb_proc_setattr_unix(%struct.dentry* %32, %struct.iattr* %9, i32 0, i32 0)
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %27, %19
  %35 = load %struct.dentry*, %struct.dentry** %5, align 8
  %36 = call i32 @smb_instantiate(%struct.dentry* %35, i32 0, i32 0)
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %34, %3
  %38 = call i32 (...) @unlock_kernel()
  %39 = load i32, i32* %8, align 4
  ret i32 %39
}

declare dso_local %struct.smb_sb_info* @server_from_dentry(%struct.dentry*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @smb_invalid_dir_cache(%struct.inode*) #1

declare dso_local i32 @smb_proc_mkdir(%struct.dentry*) #1

declare dso_local i32 @smb_proc_setattr_unix(%struct.dentry*, %struct.iattr*, i32, i32) #1

declare dso_local i32 @smb_instantiate(%struct.dentry*, i32, i32) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
