; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_gfs2_quotad.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_gfs2_quotad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32, i64, i32, i32, i32, %struct.gfs2_tune }
%struct.gfs2_tune = type { i32, i32 }

@wait = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"statfs\00", align 1
@gt_statfs_quantum = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_quotad(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca %struct.gfs2_tune*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.gfs2_sbd*
  store %struct.gfs2_sbd* %11, %struct.gfs2_sbd** %3, align 8
  %12 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %13 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %12, i32 0, i32 5
  store %struct.gfs2_tune* %13, %struct.gfs2_tune** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %14 = load i32, i32* @wait, align 4
  %15 = call i32 @DEFINE_WAIT(i32 %14)
  br label %16

16:                                               ; preds = %87, %1
  %17 = call i32 (...) @kthread_should_stop()
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %91

20:                                               ; preds = %16
  %21 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %22 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %27 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @gfs2_statfs_sync(i32 %28, i32 0)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @quotad_error(%struct.gfs2_sbd* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %34 = load i32, i32* @gt_statfs_quantum, align 4
  %35 = call i64 @gfs2_tune_get(%struct.gfs2_sbd* %33, i32 %34)
  %36 = load i64, i64* @HZ, align 8
  %37 = mul i64 %35, %36
  store i64 %37, i64* %5, align 8
  br label %44

38:                                               ; preds = %20
  %39 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.gfs2_tune*, %struct.gfs2_tune** %4, align 8
  %42 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %41, i32 0, i32 1
  %43 = call i32 @quotad_check_timeo(%struct.gfs2_sbd* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 (i32, i32)* @gfs2_statfs_sync, i64 %40, i64* %5, i32* %42)
  br label %44

44:                                               ; preds = %38, %25
  %45 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.gfs2_tune*, %struct.gfs2_tune** %4, align 8
  %48 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %47, i32 0, i32 0
  %49 = call i32 @quotad_check_timeo(%struct.gfs2_sbd* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 (i32, i32)* @gfs2_quota_sync, i64 %46, i64* %6, i32* %48)
  %50 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %51 = call i32 @quotad_check_trunc_list(%struct.gfs2_sbd* %50)
  %52 = load i32, i32* @current, align 4
  %53 = call i64 @freezing(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = call i32 (...) @refrigerator()
  br label %57

57:                                               ; preds = %55, %44
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call i64 @min(i64 %58, i64 %59)
  store i64 %60, i64* %7, align 8
  %61 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %62 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %61, i32 0, i32 0
  %63 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %64 = call i32 @prepare_to_wait(i32* %62, i32* @wait, i32 %63)
  %65 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %66 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %65, i32 0, i32 2
  %67 = call i32 @spin_lock(i32* %66)
  %68 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %69 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %68, i32 0, i32 3
  %70 = call i32 @list_empty(i32* %69)
  store i32 %70, i32* %8, align 4
  %71 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %72 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %71, i32 0, i32 2
  %73 = call i32 @spin_unlock(i32* %72)
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %57
  %77 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %78 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load i64, i64* %7, align 8
  %83 = call i64 @schedule_timeout(i64 %82)
  %84 = load i64, i64* %7, align 8
  %85 = sub i64 %84, %83
  store i64 %85, i64* %7, align 8
  br label %87

86:                                               ; preds = %76, %57
  store i64 0, i64* %7, align 8
  br label %87

87:                                               ; preds = %86, %81
  %88 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %89 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %88, i32 0, i32 0
  %90 = call i32 @finish_wait(i32* %89, i32* @wait)
  br label %16

91:                                               ; preds = %16
  ret i32 0
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @gfs2_statfs_sync(i32, i32) #1

declare dso_local i32 @quotad_error(%struct.gfs2_sbd*, i8*, i32) #1

declare dso_local i64 @gfs2_tune_get(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @quotad_check_timeo(%struct.gfs2_sbd*, i8*, i32 (i32, i32)*, i64, i64*, i32*) #1

declare dso_local i32 @gfs2_quota_sync(i32, i32) #1

declare dso_local i32 @quotad_check_trunc_list(%struct.gfs2_sbd*) #1

declare dso_local i64 @freezing(i32) #1

declare dso_local i32 @refrigerator(...) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
