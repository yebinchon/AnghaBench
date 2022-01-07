; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_dir.c_smb_instantiate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_dir.c_smb_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.smb_sb_info = type { i32 }
%struct.inode = type { i32 }
%struct.smb_fattr = type { i32 }
%struct.smb_inode_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"file %s/%s, fileid=%u\0A\00", align 1
@SMB_O_RDWR = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"%s/%s failed, error=%d, closing %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i32, i32)* @smb_instantiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_instantiate(%struct.dentry* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.smb_sb_info*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.smb_fattr, align 4
  %11 = alloca %struct.smb_inode_info*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.dentry*, %struct.dentry** %4, align 8
  %13 = call %struct.smb_sb_info* @server_from_dentry(%struct.dentry* %12)
  store %struct.smb_sb_info* %13, %struct.smb_sb_info** %7, align 8
  %14 = load %struct.dentry*, %struct.dentry** %4, align 8
  %15 = call i32 @DENTRY_PATH(%struct.dentry* %14)
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @VERBOSE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load %struct.dentry*, %struct.dentry** %4, align 8
  %19 = call i32 @smb_proc_getattr(%struct.dentry* %18, %struct.smb_fattr* %10)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %64

23:                                               ; preds = %3
  %24 = load %struct.dentry*, %struct.dentry** %4, align 8
  %25 = call i32 @smb_renew_times(%struct.dentry* %24)
  %26 = load %struct.dentry*, %struct.dentry** %4, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @iunique(i32 %28, i32 2)
  %30 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %10, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load %struct.dentry*, %struct.dentry** %4, align 8
  %32 = getelementptr inbounds %struct.dentry, %struct.dentry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.inode* @smb_iget(i32 %33, %struct.smb_fattr* %10)
  store %struct.inode* %34, %struct.inode** %8, align 8
  %35 = load %struct.inode*, %struct.inode** %8, align 8
  %36 = icmp ne %struct.inode* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %23
  br label %61

38:                                               ; preds = %23
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load %struct.inode*, %struct.inode** %8, align 8
  %43 = call %struct.smb_inode_info* @SMB_I(%struct.inode* %42)
  store %struct.smb_inode_info* %43, %struct.smb_inode_info** %11, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.smb_inode_info*, %struct.smb_inode_info** %11, align 8
  %46 = getelementptr inbounds %struct.smb_inode_info, %struct.smb_inode_info* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @SMB_O_RDWR, align 4
  %48 = load %struct.smb_inode_info*, %struct.smb_inode_info** %11, align 8
  %49 = getelementptr inbounds %struct.smb_inode_info, %struct.smb_inode_info* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.smb_sb_info*, %struct.smb_sb_info** %7, align 8
  %51 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.smb_inode_info*, %struct.smb_inode_info** %11, align 8
  %54 = getelementptr inbounds %struct.smb_inode_info, %struct.smb_inode_info* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %41, %38
  %56 = load %struct.dentry*, %struct.dentry** %4, align 8
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = call i32 @d_instantiate(%struct.dentry* %56, %struct.inode* %57)
  br label %59

59:                                               ; preds = %76, %55
  %60 = load i32, i32* %9, align 4
  ret i32 %60

61:                                               ; preds = %37
  %62 = load i32, i32* @EACCES, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %61, %22
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %64
  %68 = load %struct.dentry*, %struct.dentry** %4, align 8
  %69 = call i32 @DENTRY_PATH(%struct.dentry* %68)
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @PARANOIA(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %70, i32 %71)
  %73 = load %struct.dentry*, %struct.dentry** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @smb_close_fileid(%struct.dentry* %73, i32 %74)
  br label %76

76:                                               ; preds = %67, %64
  br label %59
}

declare dso_local %struct.smb_sb_info* @server_from_dentry(%struct.dentry*) #1

declare dso_local i32 @VERBOSE(i8*, i32, i32) #1

declare dso_local i32 @DENTRY_PATH(%struct.dentry*) #1

declare dso_local i32 @smb_proc_getattr(%struct.dentry*, %struct.smb_fattr*) #1

declare dso_local i32 @smb_renew_times(%struct.dentry*) #1

declare dso_local i32 @iunique(i32, i32) #1

declare dso_local %struct.inode* @smb_iget(i32, %struct.smb_fattr*) #1

declare dso_local %struct.smb_inode_info* @SMB_I(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @PARANOIA(i8*, i32, i32, i32) #1

declare dso_local i32 @smb_close_fileid(%struct.dentry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
