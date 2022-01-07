; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_getattr_95.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_getattr_95.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_sb_info = type { i32 }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.smb_fattr = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@SMB_F_LOCALWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_sb_info*, %struct.dentry*, %struct.smb_fattr*)* @smb_proc_getattr_95 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_proc_getattr_95(%struct.smb_sb_info* %0, %struct.dentry* %1, %struct.smb_fattr* %2) #0 {
  %4 = alloca %struct.smb_sb_info*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.smb_fattr*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.smb_sb_info* %0, %struct.smb_sb_info** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.smb_fattr* %2, %struct.smb_fattr** %6, align 8
  %10 = load %struct.dentry*, %struct.dentry** %5, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 0
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %12, %struct.inode** %7, align 8
  %13 = load %struct.smb_sb_info*, %struct.smb_sb_info** %4, align 8
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = load %struct.smb_fattr*, %struct.smb_fattr** %6, align 8
  %16 = call i32 @smb_proc_getattr_trans2_std(%struct.smb_sb_info* %13, %struct.dentry* %14, %struct.smb_fattr* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %46

20:                                               ; preds = %3
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = icmp ne %struct.inode* %21, null
  br i1 %22, label %23, label %45

23:                                               ; preds = %20
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = call %struct.TYPE_2__* @SMB_I(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SMB_F_LOCALWRITE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %23
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = call i64 @smb_is_open(%struct.inode* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load %struct.inode*, %struct.inode** %7, align 8
  %37 = call %struct.TYPE_2__* @SMB_I(%struct.inode* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  %40 = load %struct.smb_sb_info*, %struct.smb_sb_info** %4, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @smb_proc_seek(%struct.smb_sb_info* %40, i32 %41, i32 2, i32 0)
  %43 = load %struct.smb_fattr*, %struct.smb_fattr** %6, align 8
  %44 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %35, %31, %23, %20
  br label %46

46:                                               ; preds = %45, %19
  %47 = load i32, i32* %8, align 4
  ret i32 %47
}

declare dso_local i32 @smb_proc_getattr_trans2_std(%struct.smb_sb_info*, %struct.dentry*, %struct.smb_fattr*) #1

declare dso_local %struct.TYPE_2__* @SMB_I(%struct.inode*) #1

declare dso_local i64 @smb_is_open(%struct.inode*) #1

declare dso_local i32 @smb_proc_seek(%struct.smb_sb_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
