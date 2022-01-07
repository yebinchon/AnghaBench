; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd.c_check_for_modem_crash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd.c_check_for_modem_crash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsm_shared = type { i32 }

@ID_SHARED_STATE = common dso_local global i32 0, align 4
@SMSM_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_for_modem_crash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_for_modem_crash() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.smsm_shared*, align 8
  %3 = load i32, i32* @ID_SHARED_STATE, align 4
  %4 = call %struct.smsm_shared* @smem_find(i32 %3, i32 8)
  store %struct.smsm_shared* %4, %struct.smsm_shared** %2, align 8
  %5 = load %struct.smsm_shared*, %struct.smsm_shared** %2, align 8
  %6 = icmp ne %struct.smsm_shared* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %19

8:                                                ; preds = %0
  %9 = load %struct.smsm_shared*, %struct.smsm_shared** %2, align 8
  %10 = getelementptr inbounds %struct.smsm_shared, %struct.smsm_shared* %9, i64 1
  %11 = getelementptr inbounds %struct.smsm_shared, %struct.smsm_shared* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SMSM_RESET, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = call i32 (...) @handle_modem_crash()
  store i32 -1, i32* %1, align 4
  br label %19

18:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  br label %19

19:                                               ; preds = %18, %16, %7
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local %struct.smsm_shared* @smem_find(i32, i32) #1

declare dso_local i32 @handle_modem_crash(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
