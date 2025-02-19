; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rfkill/extr_core.c_rfkill_state_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rfkill/extr_core.c_rfkill_state_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.rfkill = type { i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@RFKILL_USER_STATE_SOFT_BLOCKED = common dso_local global i64 0, align 8
@RFKILL_USER_STATE_UNBLOCKED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@rfkill_global_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @rfkill_state_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfkill_state_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rfkill*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.rfkill* @to_rfkill(%struct.device* %13)
  store %struct.rfkill* %14, %struct.rfkill** %10, align 8
  %15 = load i32, i32* @CAP_NET_ADMIN, align 4
  %16 = call i32 @capable(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @EPERM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %57

21:                                               ; preds = %4
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @strict_strtoul(i8* %22, i32 0, i64* %11)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %5, align 4
  br label %57

28:                                               ; preds = %21
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @RFKILL_USER_STATE_SOFT_BLOCKED, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* @RFKILL_USER_STATE_UNBLOCKED, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %57

39:                                               ; preds = %32, %28
  %40 = call i32 @mutex_lock(i32* @rfkill_global_mutex)
  %41 = load %struct.rfkill*, %struct.rfkill** %10, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* @RFKILL_USER_STATE_SOFT_BLOCKED, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @rfkill_set_block(%struct.rfkill* %41, i32 %45)
  %47 = call i32 @mutex_unlock(i32* @rfkill_global_mutex)
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = sext i32 %48 to i64
  br label %54

52:                                               ; preds = %39
  %53 = load i64, i64* %9, align 8
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i64 [ %51, %50 ], [ %53, %52 ]
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %54, %36, %26, %18
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.rfkill* @to_rfkill(%struct.device*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rfkill_set_block(%struct.rfkill*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
