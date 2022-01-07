; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_sysfile.c__ocfs2_get_system_file_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_sysfile.c__ocfs2_get_system_file_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.inode = type { i32 }
%struct.ocfs2_super = type { i32 }

@OCFS2_FI_FLAG_SYSFILE = common dso_local global i32 0, align 4
@JOURNAL_SYSTEM_INODE = common dso_local global i32 0, align 4
@LOCAL_GROUP_QUOTA_SYSTEM_INODE = common dso_local global i32 0, align 4
@LOCAL_USER_QUOTA_SYSTEM_INODE = common dso_local global i32 0, align 4
@ocfs2_sysfile_cluster_lock_key = common dso_local global i32* null, align 8
@ocfs2_system_inodes = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.ocfs2_super*, i32, i32)* @_ocfs2_get_system_file_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @_ocfs2_get_system_file_inode(%struct.ocfs2_super* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [40 x i8], align 16
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.inode* null, %struct.inode** %8, align 8
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @ocfs2_sprintf_system_inode_name(i8* %11, i32 40, i32 %12, i32 %13)
  %15 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %16 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %19 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %20 = call i32 @strlen(i8* %19)
  %21 = call i32 @ocfs2_lookup_ino_from_name(i32 %17, i8* %18, i32 %20, i32* %9)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %39

25:                                               ; preds = %3
  %26 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @OCFS2_FI_FLAG_SYSFILE, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call %struct.inode* @ocfs2_iget(%struct.ocfs2_super* %26, i32 %27, i32 %28, i32 %29)
  store %struct.inode* %30, %struct.inode** %8, align 8
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = call i64 @IS_ERR(%struct.inode* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load %struct.inode*, %struct.inode** %8, align 8
  %36 = call i32 @PTR_ERR(%struct.inode* %35)
  %37 = call i32 @mlog_errno(i32 %36)
  store %struct.inode* null, %struct.inode** %8, align 8
  br label %39

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %34, %24
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  ret %struct.inode* %40
}

declare dso_local i32 @ocfs2_sprintf_system_inode_name(i8*, i32, i32, i32) #1

declare dso_local i32 @ocfs2_lookup_ino_from_name(i32, i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.inode* @ocfs2_iget(%struct.ocfs2_super*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
