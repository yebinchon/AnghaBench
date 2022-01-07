; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd.c_smsm_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd.c_smsm_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsm_shared = type { i32 }

@smem_lock = common dso_local global i32 0, align 4
@ID_SHARED_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"<SM NO STATE>\0A\00", align 1
@msm_smd_debug_mask = common dso_local global i32 0, align 4
@MSM_SMSM_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"<SM %08x %08x>\0A\00", align 1
@SMSM_RESET = common dso_local global i32 0, align 4
@SMSM_INIT = common dso_local global i32 0, align 4
@SMSM_SMDINIT = common dso_local global i32 0, align 4
@SMSM_RPCINIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"<SM %08x NOTIFY>\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @smsm_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsm_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.smsm_shared*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* @smem_lock, i64 %9)
  %11 = load i32, i32* @ID_SHARED_STATE, align 4
  %12 = call %struct.smsm_shared* @smem_alloc(i32 %11, i32 8)
  store %struct.smsm_shared* %12, %struct.smsm_shared** %6, align 8
  %13 = load %struct.smsm_shared*, %struct.smsm_shared** %6, align 8
  %14 = icmp eq %struct.smsm_shared* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %86

17:                                               ; preds = %2
  %18 = load %struct.smsm_shared*, %struct.smsm_shared** %6, align 8
  %19 = getelementptr inbounds %struct.smsm_shared, %struct.smsm_shared* %18, i64 0
  %20 = getelementptr inbounds %struct.smsm_shared, %struct.smsm_shared* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.smsm_shared*, %struct.smsm_shared** %6, align 8
  %23 = getelementptr inbounds %struct.smsm_shared, %struct.smsm_shared* %22, i64 1
  %24 = getelementptr inbounds %struct.smsm_shared, %struct.smsm_shared* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @msm_smd_debug_mask, align 4
  %27 = load i32, i32* @MSM_SMSM_DEBUG, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %17
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %17
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @SMSM_RESET, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 (...) @handle_modem_crash()
  br label %63

41:                                               ; preds = %34
  %42 = load i32, i32* @SMSM_INIT, align 4
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @SMSM_SMDINIT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load i32, i32* @SMSM_SMDINIT, align 4
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %49, %41
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @SMSM_RPCINIT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @SMSM_RPCINIT, align 4
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %58, %53
  br label %63

63:                                               ; preds = %62, %39
  %64 = load %struct.smsm_shared*, %struct.smsm_shared** %6, align 8
  %65 = getelementptr inbounds %struct.smsm_shared, %struct.smsm_shared* %64, i64 0
  %66 = getelementptr inbounds %struct.smsm_shared, %struct.smsm_shared* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %63
  %71 = load i32, i32* @msm_smd_debug_mask, align 4
  %72 = load i32, i32* @MSM_SMSM_DEBUG, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* %7, align 4
  %77 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.smsm_shared*, %struct.smsm_shared** %6, align 8
  %81 = getelementptr inbounds %struct.smsm_shared, %struct.smsm_shared* %80, i64 0
  %82 = getelementptr inbounds %struct.smsm_shared, %struct.smsm_shared* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 4
  %83 = call i32 (...) @do_smd_probe()
  %84 = call i32 (...) @notify_other_smsm()
  br label %85

85:                                               ; preds = %78, %63
  br label %86

86:                                               ; preds = %85, %15
  %87 = load i64, i64* %5, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* @smem_lock, i64 %87)
  %89 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %89
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.smsm_shared* @smem_alloc(i32, i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @handle_modem_crash(...) #1

declare dso_local i32 @do_smd_probe(...) #1

declare dso_local i32 @notify_other_smsm(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
