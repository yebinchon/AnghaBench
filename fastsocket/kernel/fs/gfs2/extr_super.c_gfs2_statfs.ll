; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_super.c_gfs2_statfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_super.c_gfs2_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.super_block* }
%struct.super_block = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.kstatfs = type { i32, i64, i64, i64, i64, i32, i32, i32 }
%struct.gfs2_statfs_change_host = type { i64, i64, i32 }

@gt_statfs_slow = common dso_local global i32 0, align 4
@GFS2_MAGIC = common dso_local global i32 0, align 4
@GFS2_FNAMESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @gfs2_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.kstatfs*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.gfs2_sbd*, align 8
  %8 = alloca %struct.gfs2_statfs_change_host, align 8
  %9 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %5, align 8
  %10 = load %struct.dentry*, %struct.dentry** %4, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.super_block*, %struct.super_block** %13, align 8
  store %struct.super_block* %14, %struct.super_block** %6, align 8
  %15 = load %struct.super_block*, %struct.super_block** %6, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 0
  %17 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %16, align 8
  store %struct.gfs2_sbd* %17, %struct.gfs2_sbd** %7, align 8
  %18 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %19 = call i32 @gfs2_rindex_update(%struct.gfs2_sbd* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %3, align 4
  br label %76

24:                                               ; preds = %2
  %25 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %26 = load i32, i32* @gt_statfs_slow, align 4
  %27 = call i64 @gfs2_tune_get(%struct.gfs2_sbd* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %31 = call i32 @gfs2_statfs_slow(%struct.gfs2_sbd* %30, %struct.gfs2_statfs_change_host* %8)
  store i32 %31, i32* %9, align 4
  br label %35

32:                                               ; preds = %24
  %33 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %34 = call i32 @gfs2_statfs_i(%struct.gfs2_sbd* %33, %struct.gfs2_statfs_change_host* %8)
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %3, align 4
  br label %76

40:                                               ; preds = %35
  %41 = load i32, i32* @GFS2_MAGIC, align 4
  %42 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %43 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 8
  %44 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %45 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %49 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 4
  %50 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %8, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %53 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  %54 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %8, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %57 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %56, i32 0, i32 4
  store i64 %55, i64* %57, align 8
  %58 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %8, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %61 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %60, i32 0, i32 3
  store i64 %59, i64* %61, align 8
  %62 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %8, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %8, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %63, %65
  %67 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %68 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %67, i32 0, i32 2
  store i64 %66, i64* %68, align 8
  %69 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %8, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %72 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load i32, i32* @GFS2_FNAMESIZE, align 4
  %74 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %75 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %40, %38, %22
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @gfs2_rindex_update(%struct.gfs2_sbd*) #1

declare dso_local i64 @gfs2_tune_get(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @gfs2_statfs_slow(%struct.gfs2_sbd*, %struct.gfs2_statfs_change_host*) #1

declare dso_local i32 @gfs2_statfs_i(%struct.gfs2_sbd*, %struct.gfs2_statfs_change_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
