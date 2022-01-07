; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_settime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.smb_fattr = type { i32 }
%struct.smb_sb_info = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"setting %s/%s, open=%d\0A\00", align 1
@SMB_PROTOCOL_LANMAN2 = common dso_local global i64 0, align 8
@SMB_MOUNT_WIN95 = common dso_local global i32 0, align 4
@SMB_O_RDONLY = common dso_local global i64 0, align 8
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_proc_settime(%struct.dentry* %0, %struct.smb_fattr* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.smb_fattr*, align 8
  %5 = alloca %struct.smb_sb_info*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.smb_fattr* %1, %struct.smb_fattr** %4, align 8
  %8 = load %struct.dentry*, %struct.dentry** %3, align 8
  %9 = call %struct.smb_sb_info* @server_from_dentry(%struct.dentry* %8)
  store %struct.smb_sb_info* %9, %struct.smb_sb_info** %5, align 8
  %10 = load %struct.dentry*, %struct.dentry** %3, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 0
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %12, %struct.inode** %6, align 8
  %13 = load %struct.dentry*, %struct.dentry** %3, align 8
  %14 = call i32 @DENTRY_PATH(%struct.dentry* %13)
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = call i64 @smb_is_open(%struct.inode* %15)
  %17 = call i32 @VERBOSE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %14, i64 %16)
  %18 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %19 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SMB_PROTOCOL_LANMAN2, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %55

24:                                               ; preds = %2
  %25 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %26 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SMB_MOUNT_WIN95, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %55, label %33

33:                                               ; preds = %24
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = call i64 @smb_is_open(%struct.inode* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = call %struct.TYPE_6__* @SMB_I(%struct.inode* %38)
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SMB_O_RDONLY, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %48 = call i32 @smb_proc_setattr_ext(%struct.smb_sb_info* %45, %struct.inode* %46, %struct.smb_fattr* %47)
  store i32 %48, i32* %7, align 4
  br label %54

49:                                               ; preds = %37, %33
  %50 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %51 = load %struct.dentry*, %struct.dentry** %3, align 8
  %52 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %53 = call i32 @smb_proc_setattr_trans2(%struct.smb_sb_info* %50, %struct.dentry* %51, %struct.smb_fattr* %52)
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %49, %44
  br label %87

55:                                               ; preds = %24, %2
  store i32 0, i32* %7, align 4
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @S_ISREG(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %86

61:                                               ; preds = %55
  %62 = load i32, i32* @EACCES, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %7, align 4
  %64 = load %struct.inode*, %struct.inode** %6, align 8
  %65 = call i64 @smb_is_open(%struct.inode* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %61
  %68 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %69 = load %struct.dentry*, %struct.dentry** %3, align 8
  %70 = load i64, i64* @SMB_O_RDONLY, align 8
  %71 = call i32 @smb_proc_open(%struct.smb_sb_info* %68, %struct.dentry* %69, i64 %70)
  br label %72

72:                                               ; preds = %67, %61
  %73 = load %struct.inode*, %struct.inode** %6, align 8
  %74 = call i64 @smb_is_open(%struct.inode* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %72
  %77 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %78 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.inode*, %struct.inode** %6, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %83 = load %struct.inode*, %struct.inode** %6, align 8
  %84 = call i32 @smb_proc_close_inode(%struct.smb_sb_info* %82, %struct.inode* %83)
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %76, %72
  br label %86

86:                                               ; preds = %85, %55
  br label %87

87:                                               ; preds = %86, %54
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local %struct.smb_sb_info* @server_from_dentry(%struct.dentry*) #1

declare dso_local i32 @VERBOSE(i8*, i32, i64) #1

declare dso_local i32 @DENTRY_PATH(%struct.dentry*) #1

declare dso_local i64 @smb_is_open(%struct.inode*) #1

declare dso_local %struct.TYPE_6__* @SMB_I(%struct.inode*) #1

declare dso_local i32 @smb_proc_setattr_ext(%struct.smb_sb_info*, %struct.inode*, %struct.smb_fattr*) #1

declare dso_local i32 @smb_proc_setattr_trans2(%struct.smb_sb_info*, %struct.dentry*, %struct.smb_fattr*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @smb_proc_open(%struct.smb_sb_info*, %struct.dentry*, i64) #1

declare dso_local i32 @smb_proc_close_inode(%struct.smb_sb_info*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
