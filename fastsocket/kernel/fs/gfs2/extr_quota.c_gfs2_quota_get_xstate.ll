; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_gfs2_quota_get_xstate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_gfs2_quota_get_xstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.fs_quota_stat = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@FS_QSTAT_VERSION = common dso_local global i32 0, align 4
@XFS_QUOTA_UDQ_ENFD = common dso_local global i32 0, align 4
@XFS_QUOTA_GDQ_ENFD = common dso_local global i32 0, align 4
@XFS_QUOTA_UDQ_ACCT = common dso_local global i32 0, align 4
@XFS_QUOTA_GDQ_ACCT = common dso_local global i32 0, align 4
@qd_lru_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.fs_quota_stat*)* @gfs2_quota_get_xstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_quota_get_xstate(%struct.super_block* %0, %struct.fs_quota_stat* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.fs_quota_stat*, align 8
  %5 = alloca %struct.gfs2_sbd*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.fs_quota_stat* %1, %struct.fs_quota_stat** %4, align 8
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = getelementptr inbounds %struct.super_block, %struct.super_block* %6, i32 0, i32 0
  %8 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  store %struct.gfs2_sbd* %8, %struct.gfs2_sbd** %5, align 8
  %9 = load %struct.fs_quota_stat*, %struct.fs_quota_stat** %4, align 8
  %10 = call i32 @memset(%struct.fs_quota_stat* %9, i32 0, i32 36)
  %11 = load i32, i32* @FS_QSTAT_VERSION, align 4
  %12 = load %struct.fs_quota_stat*, %struct.fs_quota_stat** %4, align 8
  %13 = getelementptr inbounds %struct.fs_quota_stat, %struct.fs_quota_stat* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 4
  %14 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %15 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %35 [
    i32 128, label %18
    i32 130, label %26
    i32 129, label %34
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @XFS_QUOTA_UDQ_ENFD, align 4
  %20 = load i32, i32* @XFS_QUOTA_GDQ_ENFD, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.fs_quota_stat*, %struct.fs_quota_stat** %4, align 8
  %23 = getelementptr inbounds %struct.fs_quota_stat, %struct.fs_quota_stat* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %2, %18
  %27 = load i32, i32* @XFS_QUOTA_UDQ_ACCT, align 4
  %28 = load i32, i32* @XFS_QUOTA_GDQ_ACCT, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.fs_quota_stat*, %struct.fs_quota_stat** %4, align 8
  %31 = getelementptr inbounds %struct.fs_quota_stat, %struct.fs_quota_stat* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %35

34:                                               ; preds = %2
  br label %35

35:                                               ; preds = %2, %34, %26
  %36 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %37 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = icmp ne %struct.TYPE_8__* %38, null
  br i1 %39, label %40, label %58

40:                                               ; preds = %35
  %41 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %42 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = call %struct.TYPE_7__* @GFS2_I(%struct.TYPE_8__* %43)
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.fs_quota_stat*, %struct.fs_quota_stat** %4, align 8
  %48 = getelementptr inbounds %struct.fs_quota_stat, %struct.fs_quota_stat* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 4
  %50 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %51 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.fs_quota_stat*, %struct.fs_quota_stat** %4, align 8
  %56 = getelementptr inbounds %struct.fs_quota_stat, %struct.fs_quota_stat* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  br label %58

58:                                               ; preds = %40, %35
  %59 = load %struct.fs_quota_stat*, %struct.fs_quota_stat** %4, align 8
  %60 = getelementptr inbounds %struct.fs_quota_stat, %struct.fs_quota_stat* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  %62 = load %struct.fs_quota_stat*, %struct.fs_quota_stat** %4, align 8
  %63 = getelementptr inbounds %struct.fs_quota_stat, %struct.fs_quota_stat* %62, i32 0, i32 3
  %64 = load %struct.fs_quota_stat*, %struct.fs_quota_stat** %4, align 8
  %65 = getelementptr inbounds %struct.fs_quota_stat, %struct.fs_quota_stat* %64, i32 0, i32 2
  %66 = bitcast %struct.TYPE_6__* %63 to i8*
  %67 = bitcast %struct.TYPE_6__* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 4 %67, i64 12, i1 false)
  %68 = call i32 @atomic_read(i32* @qd_lru_count)
  %69 = load %struct.fs_quota_stat*, %struct.fs_quota_stat** %4, align 8
  %70 = getelementptr inbounds %struct.fs_quota_stat, %struct.fs_quota_stat* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  ret i32 0
}

declare dso_local i32 @memset(%struct.fs_quota_stat*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @GFS2_I(%struct.TYPE_8__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
