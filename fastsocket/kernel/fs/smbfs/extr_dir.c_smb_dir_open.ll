; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_dir.c_smb_dir_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_dir.c_smb_dir_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.dentry* }
%struct.dentry = type { %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.smb_sb_info = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"(%s/%s)\0A\00", align 1
@SMB_PROTOCOL_LANMAN2 = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@CONN_VALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @smb_dir_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_dir_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.smb_sb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load %struct.dentry*, %struct.dentry** %11, align 8
  store %struct.dentry* %12, %struct.dentry** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.dentry*, %struct.dentry** %21, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @VERBOSE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %25)
  %27 = call i32 (...) @lock_kernel()
  %28 = load %struct.dentry*, %struct.dentry** %5, align 8
  %29 = call %struct.smb_sb_info* @server_from_dentry(%struct.dentry* %28)
  store %struct.smb_sb_info* %29, %struct.smb_sb_info** %6, align 8
  %30 = load %struct.smb_sb_info*, %struct.smb_sb_info** %6, align 8
  %31 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SMB_PROTOCOL_LANMAN2, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %2
  %37 = load i64, i64* @jiffies, align 8
  %38 = load %struct.inode*, %struct.inode** %3, align 8
  %39 = call %struct.TYPE_12__* @SMB_I(%struct.inode* %38)
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %37, %41
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i32, i32* @HZ, align 4
  %45 = mul nsw i32 2, %44
  %46 = sext i32 %45 to i64
  %47 = icmp ugt i64 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %36
  %49 = load %struct.inode*, %struct.inode** %3, align 8
  %50 = call i32 @smb_invalid_dir_cache(%struct.inode* %49)
  br label %51

51:                                               ; preds = %48, %36
  br label %52

52:                                               ; preds = %51, %2
  %53 = load %struct.smb_sb_info*, %struct.smb_sb_info** %6, align 8
  %54 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @CONN_VALID, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = load %struct.dentry*, %struct.dentry** %5, align 8
  %60 = call i32 @IS_ROOT(%struct.dentry* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58, %52
  %63 = load %struct.dentry*, %struct.dentry** %5, align 8
  %64 = call i32 @smb_revalidate_inode(%struct.dentry* %63)
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %62, %58
  %66 = call i32 (...) @unlock_kernel()
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i32 @VERBOSE(i8*, i32, i32) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.smb_sb_info* @server_from_dentry(%struct.dentry*) #1

declare dso_local %struct.TYPE_12__* @SMB_I(%struct.inode*) #1

declare dso_local i32 @smb_invalid_dir_cache(%struct.inode*) #1

declare dso_local i32 @IS_ROOT(%struct.dentry*) #1

declare dso_local i32 @smb_revalidate_inode(%struct.dentry*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
