; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/echo/extr_echo.c_oslec_hpf_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/echo/extr_echo.c_oslec_hpf_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oslec_state = type { i32, i32, i32 }

@ECHO_CAN_USE_TX_HPF = common dso_local global i32 0, align 4
@DC_LOG2BETA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oslec_hpf_tx(%struct.oslec_state* %0, i32 %1) #0 {
  %3 = alloca %struct.oslec_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.oslec_state* %0, %struct.oslec_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.oslec_state*, %struct.oslec_state** %3, align 8
  %8 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @ECHO_CAN_USE_TX_HPF, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %52

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = shl i32 %14, 15
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = ashr i32 %16, 4
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load %struct.oslec_state*, %struct.oslec_state** %3, align 8
  %21 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DC_LOG2BETA, align 4
  %24 = ashr i32 %22, %23
  %25 = sub nsw i32 0, %24
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %25, %26
  %28 = load %struct.oslec_state*, %struct.oslec_state** %3, align 8
  %29 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %27, %30
  %32 = load %struct.oslec_state*, %struct.oslec_state** %3, align 8
  %33 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.oslec_state*, %struct.oslec_state** %3, align 8
  %37 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 15
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp sgt i32 %40, 32767
  br i1 %41, label %42, label %43

42:                                               ; preds = %13
  store i32 32767, i32* %6, align 4
  br label %43

43:                                               ; preds = %42, %13
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, -32767
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 -32767, i32* %6, align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.oslec_state*, %struct.oslec_state** %3, align 8
  %51 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %47, %2
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
