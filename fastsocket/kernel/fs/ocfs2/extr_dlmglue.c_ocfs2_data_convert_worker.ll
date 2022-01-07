; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_data_convert_worker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_data_convert_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res = type { i32 }
%struct.inode = type { i32, %struct.address_space* }
%struct.address_space = type { i32 }
%struct.TYPE_2__ = type { i64 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Could not sync inode %llu for downconvert!\00", align 1
@DLM_LOCK_EX = common dso_local global i32 0, align 4
@UNBLOCK_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_lock_res*, i32)* @ocfs2_data_convert_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_data_convert_worker(%struct.ocfs2_lock_res* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_lock_res*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.address_space*, align 8
  store %struct.ocfs2_lock_res* %0, %struct.ocfs2_lock_res** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %8 = call %struct.inode* @ocfs2_lock_res_inode(%struct.ocfs2_lock_res* %7)
  store %struct.inode* %8, %struct.inode** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 1
  %11 = load %struct.address_space*, %struct.address_space** %10, align 8
  store %struct.address_space* %11, %struct.address_space** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @S_ISREG(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %44

18:                                               ; preds = %2
  %19 = load %struct.address_space*, %struct.address_space** %6, align 8
  %20 = call i32 @unmap_mapping_range(%struct.address_space* %19, i32 0, i32 0, i32 0)
  %21 = load %struct.address_space*, %struct.address_space** %6, align 8
  %22 = call i64 @filemap_fdatawrite(%struct.address_space* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load i32, i32* @ML_ERROR, align 4
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @mlog(i32 %25, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %29)
  br label %31

31:                                               ; preds = %24, %18
  %32 = load %struct.address_space*, %struct.address_space** %6, align 8
  %33 = call i32 @sync_mapping_buffers(%struct.address_space* %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @DLM_LOCK_EX, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.address_space*, %struct.address_space** %6, align 8
  %39 = call i32 @truncate_inode_pages(%struct.address_space* %38, i32 0)
  br label %43

40:                                               ; preds = %31
  %41 = load %struct.address_space*, %struct.address_space** %6, align 8
  %42 = call i32 @filemap_fdatawait(%struct.address_space* %41)
  br label %43

43:                                               ; preds = %40, %37
  br label %44

44:                                               ; preds = %43, %17
  %45 = load i32, i32* @UNBLOCK_CONTINUE, align 4
  ret i32 %45
}

declare dso_local %struct.inode* @ocfs2_lock_res_inode(%struct.ocfs2_lock_res*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @unmap_mapping_range(%struct.address_space*, i32, i32, i32) #1

declare dso_local i64 @filemap_fdatawrite(%struct.address_space*) #1

declare dso_local i32 @mlog(i32, i8*, i64) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @sync_mapping_buffers(%struct.address_space*) #1

declare dso_local i32 @truncate_inode_pages(%struct.address_space*, i32) #1

declare dso_local i32 @filemap_fdatawait(%struct.address_space*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
