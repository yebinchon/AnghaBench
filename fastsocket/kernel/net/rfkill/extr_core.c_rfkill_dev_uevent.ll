; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rfkill/extr_core.c_rfkill_dev_uevent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rfkill/extr_core.c_rfkill_dev_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.kobj_uevent_env = type { i32 }
%struct.rfkill = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"RFKILL_NAME=%s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"RFKILL_TYPE=%s\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"RFKILL_STATE=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.kobj_uevent_env*)* @rfkill_dev_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfkill_dev_uevent(%struct.device* %0, %struct.kobj_uevent_env* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.kobj_uevent_env*, align 8
  %6 = alloca %struct.rfkill*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.kobj_uevent_env* %1, %struct.kobj_uevent_env** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.rfkill* @to_rfkill(%struct.device* %10)
  store %struct.rfkill* %11, %struct.rfkill** %6, align 8
  %12 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %13 = load %struct.rfkill*, %struct.rfkill** %6, align 8
  %14 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @add_uevent_var(%struct.kobj_uevent_env* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %3, align 4
  br label %49

21:                                               ; preds = %2
  %22 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %23 = load %struct.rfkill*, %struct.rfkill** %6, align 8
  %24 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @rfkill_get_type_str(i32 %25)
  %27 = call i32 @add_uevent_var(%struct.kobj_uevent_env* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %3, align 4
  br label %49

32:                                               ; preds = %21
  %33 = load %struct.rfkill*, %struct.rfkill** %6, align 8
  %34 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %33, i32 0, i32 0
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.rfkill*, %struct.rfkill** %6, align 8
  %38 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %8, align 4
  %40 = load %struct.rfkill*, %struct.rfkill** %6, align 8
  %41 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %40, i32 0, i32 0
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @user_state_from_blocked(i32 %45)
  %47 = call i32 @add_uevent_var(%struct.kobj_uevent_env* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %32, %30, %19
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.rfkill* @to_rfkill(%struct.device*) #1

declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env*, i8*, i32) #1

declare dso_local i32 @rfkill_get_type_str(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @user_state_from_blocked(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
