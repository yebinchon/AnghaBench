; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_local.c_ocfs2_create_local_dquot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_local.c_ocfs2_create_local_dquot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.ocfs2_quota_chunk = type { i32, i32 }
%struct.ocfs2_dquot = type { %struct.ocfs2_quota_chunk*, i32 }
%struct.TYPE_2__ = type { %struct.inode** }

@olq_alloc_dquot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dquot*)* @ocfs2_create_local_dquot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_create_local_dquot(%struct.dquot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dquot*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ocfs2_quota_chunk*, align 8
  %8 = alloca %struct.ocfs2_dquot*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dquot* %0, %struct.dquot** %3, align 8
  %11 = load %struct.dquot*, %struct.dquot** %3, align 8
  %12 = getelementptr inbounds %struct.dquot, %struct.dquot* %11, i32 0, i32 1
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %4, align 8
  %14 = load %struct.dquot*, %struct.dquot** %3, align 8
  %15 = getelementptr inbounds %struct.dquot, %struct.dquot* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.super_block*, %struct.super_block** %4, align 8
  %18 = call %struct.TYPE_2__* @sb_dqopt(%struct.super_block* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.inode**, %struct.inode*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.inode*, %struct.inode** %20, i64 %22
  %24 = load %struct.inode*, %struct.inode** %23, align 8
  store %struct.inode* %24, %struct.inode** %6, align 8
  %25 = load %struct.dquot*, %struct.dquot** %3, align 8
  %26 = call %struct.ocfs2_dquot* @OCFS2_DQUOT(%struct.dquot* %25)
  store %struct.ocfs2_dquot* %26, %struct.ocfs2_dquot** %8, align 8
  %27 = load %struct.super_block*, %struct.super_block** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call %struct.ocfs2_quota_chunk* @ocfs2_find_free_entry(%struct.super_block* %27, i32 %28, i32* %9)
  store %struct.ocfs2_quota_chunk* %29, %struct.ocfs2_quota_chunk** %7, align 8
  %30 = load %struct.ocfs2_quota_chunk*, %struct.ocfs2_quota_chunk** %7, align 8
  %31 = icmp ne %struct.ocfs2_quota_chunk* %30, null
  br i1 %31, label %43, label %32

32:                                               ; preds = %1
  %33 = load %struct.super_block*, %struct.super_block** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call %struct.ocfs2_quota_chunk* @ocfs2_extend_local_quota_file(%struct.super_block* %33, i32 %34, i32* %9)
  store %struct.ocfs2_quota_chunk* %35, %struct.ocfs2_quota_chunk** %7, align 8
  %36 = load %struct.ocfs2_quota_chunk*, %struct.ocfs2_quota_chunk** %7, align 8
  %37 = call i64 @IS_ERR(%struct.ocfs2_quota_chunk* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.ocfs2_quota_chunk*, %struct.ocfs2_quota_chunk** %7, align 8
  %41 = call i32 @PTR_ERR(%struct.ocfs2_quota_chunk* %40)
  store i32 %41, i32* %2, align 4
  br label %85

42:                                               ; preds = %32
  br label %51

43:                                               ; preds = %1
  %44 = load %struct.ocfs2_quota_chunk*, %struct.ocfs2_quota_chunk** %7, align 8
  %45 = call i64 @IS_ERR(%struct.ocfs2_quota_chunk* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load %struct.ocfs2_quota_chunk*, %struct.ocfs2_quota_chunk** %7, align 8
  %49 = call i32 @PTR_ERR(%struct.ocfs2_quota_chunk* %48)
  store i32 %49, i32* %2, align 4
  br label %85

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %42
  %52 = load %struct.super_block*, %struct.super_block** %4, align 8
  %53 = load %struct.ocfs2_quota_chunk*, %struct.ocfs2_quota_chunk** %7, align 8
  %54 = getelementptr inbounds %struct.ocfs2_quota_chunk, %struct.ocfs2_quota_chunk* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @ol_dqblk_off(%struct.super_block* %52, i32 %55, i32 %56)
  %58 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %8, align 8
  %59 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load %struct.ocfs2_quota_chunk*, %struct.ocfs2_quota_chunk** %7, align 8
  %61 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %8, align 8
  %62 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %61, i32 0, i32 0
  store %struct.ocfs2_quota_chunk* %60, %struct.ocfs2_quota_chunk** %62, align 8
  %63 = load %struct.dquot*, %struct.dquot** %3, align 8
  %64 = call i32 @ocfs2_local_write_dquot(%struct.dquot* %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %51
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @mlog_errno(i32 %68)
  br label %83

70:                                               ; preds = %51
  %71 = load %struct.inode*, %struct.inode** %6, align 8
  %72 = load %struct.ocfs2_quota_chunk*, %struct.ocfs2_quota_chunk** %7, align 8
  %73 = getelementptr inbounds %struct.ocfs2_quota_chunk, %struct.ocfs2_quota_chunk* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @olq_alloc_dquot, align 4
  %76 = call i32 @ocfs2_modify_bh(%struct.inode* %71, i32 %74, i32 %75, i32* %9)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @mlog_errno(i32 %80)
  br label %83

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82, %79, %67
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %83, %47, %39
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.TYPE_2__* @sb_dqopt(%struct.super_block*) #1

declare dso_local %struct.ocfs2_dquot* @OCFS2_DQUOT(%struct.dquot*) #1

declare dso_local %struct.ocfs2_quota_chunk* @ocfs2_find_free_entry(%struct.super_block*, i32, i32*) #1

declare dso_local %struct.ocfs2_quota_chunk* @ocfs2_extend_local_quota_file(%struct.super_block*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.ocfs2_quota_chunk*) #1

declare dso_local i32 @PTR_ERR(%struct.ocfs2_quota_chunk*) #1

declare dso_local i32 @ol_dqblk_off(%struct.super_block*, i32, i32) #1

declare dso_local i32 @ocfs2_local_write_dquot(%struct.dquot*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_modify_bh(%struct.inode*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
