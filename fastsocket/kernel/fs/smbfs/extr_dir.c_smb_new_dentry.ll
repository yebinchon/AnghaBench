; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_dir.c_smb_new_dentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_dir.c_smb_new_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32* }
%struct.smb_sb_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SMB_MOUNT_CASE = common dso_local global i32 0, align 4
@smbfs_dentry_operations_case = common dso_local global i32 0, align 4
@smbfs_dentry_operations = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smb_new_dentry(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.smb_sb_info*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %4 = load %struct.dentry*, %struct.dentry** %2, align 8
  %5 = call %struct.smb_sb_info* @server_from_dentry(%struct.dentry* %4)
  store %struct.smb_sb_info* %5, %struct.smb_sb_info** %3, align 8
  %6 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %7 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SMB_MOUNT_CASE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.dentry*, %struct.dentry** %2, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 1
  store i32* @smbfs_dentry_operations_case, i32** %16, align 8
  br label %20

17:                                               ; preds = %1
  %18 = load %struct.dentry*, %struct.dentry** %2, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 1
  store i32* @smbfs_dentry_operations, i32** %19, align 8
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* @jiffies, align 4
  %22 = load %struct.dentry*, %struct.dentry** %2, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  ret void
}

declare dso_local %struct.smb_sb_info* @server_from_dentry(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
