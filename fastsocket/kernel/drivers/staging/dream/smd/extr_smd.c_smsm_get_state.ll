; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd.c_smsm_get_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd.c_smsm_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsm_shared = type { i32 }

@smem_lock = common dso_local global i32 0, align 4
@ID_SHARED_STATE = common dso_local global i32 0, align 4
@SMSM_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"smsm_get_state <SM NO STATE>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smsm_get_state() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.smsm_shared*, align 8
  %3 = alloca i32, align 4
  %4 = load i64, i64* %1, align 8
  %5 = call i32 @spin_lock_irqsave(i32* @smem_lock, i64 %4)
  %6 = load i32, i32* @ID_SHARED_STATE, align 4
  %7 = call %struct.smsm_shared* @smem_alloc(i32 %6, i32 8)
  store %struct.smsm_shared* %7, %struct.smsm_shared** %2, align 8
  %8 = load %struct.smsm_shared*, %struct.smsm_shared** %2, align 8
  %9 = icmp ne %struct.smsm_shared* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %0
  %11 = load %struct.smsm_shared*, %struct.smsm_shared** %2, align 8
  %12 = getelementptr inbounds %struct.smsm_shared, %struct.smsm_shared* %11, i64 1
  %13 = getelementptr inbounds %struct.smsm_shared, %struct.smsm_shared* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  br label %16

15:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %15, %10
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SMSM_RESET, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 (...) @handle_modem_crash()
  br label %23

23:                                               ; preds = %21, %16
  %24 = load i64, i64* %1, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* @smem_lock, i64 %24)
  %26 = load %struct.smsm_shared*, %struct.smsm_shared** %2, align 8
  %27 = icmp eq %struct.smsm_shared* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.smsm_shared* @smem_alloc(i32, i32) #1

declare dso_local i32 @handle_modem_crash(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
