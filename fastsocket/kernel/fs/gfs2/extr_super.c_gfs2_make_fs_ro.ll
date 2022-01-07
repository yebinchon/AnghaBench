; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_super.c_gfs2_make_fs_ro.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_super.c_gfs2_make_fs_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32, i32, i32 }
%struct.gfs2_holder = type { i64 }

@gfs2_delete_workqueue = common dso_local global i32 0, align 4
@LM_ST_SHARED = common dso_local global i32 0, align 4
@GL_NOCACHE = common dso_local global i32 0, align 4
@SDF_SHUTDOWN = common dso_local global i32 0, align 4
@SDF_JOURNAL_LIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*)* @gfs2_make_fs_ro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_make_fs_ro(%struct.gfs2_sbd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca %struct.gfs2_holder, align 8
  %5 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %3, align 8
  %6 = load i32, i32* @gfs2_delete_workqueue, align 4
  %7 = call i32 @flush_workqueue(i32 %6)
  %8 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %9 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @gfs2_quota_sync(i32 %10, i32 0)
  %12 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %13 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @gfs2_statfs_sync(i32 %14, i32 0)
  %16 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %17 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @LM_ST_SHARED, align 4
  %20 = load i32, i32* @GL_NOCACHE, align 4
  %21 = call i32 @gfs2_glock_nq_init(i32 %18, i32 %19, i32 %20, %struct.gfs2_holder* %4)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = load i32, i32* @SDF_SHUTDOWN, align 4
  %26 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %27 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %26, i32 0, i32 0
  %28 = call i32 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %50

32:                                               ; preds = %24, %1
  %33 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %34 = call i32 @gfs2_meta_syncfs(%struct.gfs2_sbd* %33)
  %35 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %36 = call i32 @gfs2_log_shutdown(%struct.gfs2_sbd* %35)
  %37 = load i32, i32* @SDF_JOURNAL_LIVE, align 4
  %38 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %39 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %38, i32 0, i32 0
  %40 = call i32 @clear_bit(i32 %37, i32* %39)
  %41 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %4, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %32
  %45 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %4)
  br label %46

46:                                               ; preds = %44, %32
  %47 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %48 = call i32 @gfs2_quota_cleanup(%struct.gfs2_sbd* %47)
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %46, %30
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @gfs2_quota_sync(i32, i32) #1

declare dso_local i32 @gfs2_statfs_sync(i32, i32) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @gfs2_meta_syncfs(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_log_shutdown(%struct.gfs2_sbd*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_quota_cleanup(%struct.gfs2_sbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
