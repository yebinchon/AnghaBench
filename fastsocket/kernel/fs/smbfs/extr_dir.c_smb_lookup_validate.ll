; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_dir.c_smb_lookup_validate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_dir.c_smb_lookup_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i64, %struct.inode* }
%struct.inode = type { i32 }
%struct.nameidata = type { i32 }
%struct.smb_sb_info = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"%s/%s has dud inode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.nameidata*)* @smb_lookup_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_lookup_validate(%struct.dentry* %0, %struct.nameidata* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.nameidata*, align 8
  %5 = alloca %struct.smb_sb_info*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.nameidata* %1, %struct.nameidata** %4, align 8
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = call %struct.smb_sb_info* @server_from_dentry(%struct.dentry* %9)
  store %struct.smb_sb_info* %10, %struct.smb_sb_info** %5, align 8
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 1
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %6, align 8
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.dentry*, %struct.dentry** %3, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub i64 %14, %17
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %21 = call i64 @SMB_MAX_AGE(%struct.smb_sb_info* %20)
  %22 = icmp ule i64 %19, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = icmp ne %struct.inode* %24, null
  br i1 %25, label %26, label %46

26:                                               ; preds = %2
  %27 = call i32 (...) @lock_kernel()
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = call i64 @is_bad_inode(%struct.inode* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.dentry*, %struct.dentry** %3, align 8
  %33 = call i32 @DENTRY_PATH(%struct.dentry* %32)
  %34 = call i32 @PARANOIA(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 0, i32* %8, align 4
  br label %44

35:                                               ; preds = %26
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = load %struct.dentry*, %struct.dentry** %3, align 8
  %40 = call i64 @smb_revalidate_inode(%struct.dentry* %39)
  %41 = icmp eq i64 %40, 0
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %38, %35
  br label %44

44:                                               ; preds = %43, %31
  %45 = call i32 (...) @unlock_kernel()
  br label %47

46:                                               ; preds = %2
  br label %47

47:                                               ; preds = %46, %44
  %48 = load i32, i32* %8, align 4
  ret i32 %48
}

declare dso_local %struct.smb_sb_info* @server_from_dentry(%struct.dentry*) #1

declare dso_local i64 @SMB_MAX_AGE(%struct.smb_sb_info*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @PARANOIA(i8*, i32) #1

declare dso_local i32 @DENTRY_PATH(%struct.dentry*) #1

declare dso_local i64 @smb_revalidate_inode(%struct.dentry*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
