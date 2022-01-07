; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd.c_smsm_change_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd.c_smsm_change_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsm_shared = type { i32 }

@smem_lock = common dso_local global i32 0, align 4
@ID_SHARED_STATE = common dso_local global i32 0, align 4
@SMSM_RESET = common dso_local global i32 0, align 4
@msm_smd_debug_mask = common dso_local global i32 0, align 4
@MSM_SMSM_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"smsm_change_state %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"smsm_change_state <SM NO STATE>\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smsm_change_state(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.smsm_shared*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* %6, align 8
  %9 = call i32 @spin_lock_irqsave(i32* @smem_lock, i64 %8)
  %10 = load i32, i32* @ID_SHARED_STATE, align 4
  %11 = call %struct.smsm_shared* @smem_alloc(i32 %10, i32 8)
  store %struct.smsm_shared* %11, %struct.smsm_shared** %7, align 8
  %12 = load %struct.smsm_shared*, %struct.smsm_shared** %7, align 8
  %13 = icmp ne %struct.smsm_shared* %12, null
  br i1 %13, label %14, label %49

14:                                               ; preds = %2
  %15 = load %struct.smsm_shared*, %struct.smsm_shared** %7, align 8
  %16 = getelementptr inbounds %struct.smsm_shared, %struct.smsm_shared* %15, i64 1
  %17 = getelementptr inbounds %struct.smsm_shared, %struct.smsm_shared* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SMSM_RESET, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = call i32 (...) @handle_modem_crash()
  br label %24

24:                                               ; preds = %22, %14
  %25 = load %struct.smsm_shared*, %struct.smsm_shared** %7, align 8
  %26 = getelementptr inbounds %struct.smsm_shared, %struct.smsm_shared* %25, i64 0
  %27 = getelementptr inbounds %struct.smsm_shared, %struct.smsm_shared* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.smsm_shared*, %struct.smsm_shared** %7, align 8
  %35 = getelementptr inbounds %struct.smsm_shared, %struct.smsm_shared* %34, i64 0
  %36 = getelementptr inbounds %struct.smsm_shared, %struct.smsm_shared* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @msm_smd_debug_mask, align 4
  %38 = load i32, i32* @MSM_SMSM_DEBUG, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %24
  %42 = load %struct.smsm_shared*, %struct.smsm_shared** %7, align 8
  %43 = getelementptr inbounds %struct.smsm_shared, %struct.smsm_shared* %42, i64 0
  %44 = getelementptr inbounds %struct.smsm_shared, %struct.smsm_shared* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %41, %24
  %48 = call i32 (...) @notify_other_smsm()
  br label %49

49:                                               ; preds = %47, %2
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* @smem_lock, i64 %50)
  %52 = load %struct.smsm_shared*, %struct.smsm_shared** %7, align 8
  %53 = icmp eq %struct.smsm_shared* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %59

58:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %54
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.smsm_shared* @smem_alloc(i32, i32) #1

declare dso_local i32 @handle_modem_crash(...) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @notify_other_smsm(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
