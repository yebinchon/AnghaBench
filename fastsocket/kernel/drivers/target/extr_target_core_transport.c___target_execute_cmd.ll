; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c___target_execute_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c___target_execute_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i32, i64 (%struct.se_cmd*)* }

@CMD_T_BUSY = common dso_local global i32 0, align 4
@CMD_T_SENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_cmd*)* @__target_execute_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__target_execute_cmd(%struct.se_cmd* %0) #0 {
  %2 = alloca %struct.se_cmd*, align 8
  %3 = alloca i64, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %2, align 8
  %4 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %5 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %4, i32 0, i32 1
  %6 = call i32 @spin_lock_irq(i32* %5)
  %7 = load i32, i32* @CMD_T_BUSY, align 4
  %8 = load i32, i32* @CMD_T_SENT, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %11 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %15 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %14, i32 0, i32 1
  %16 = call i32 @spin_unlock_irq(i32* %15)
  %17 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %18 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %17, i32 0, i32 2
  %19 = load i64 (%struct.se_cmd*)*, i64 (%struct.se_cmd*)** %18, align 8
  %20 = icmp ne i64 (%struct.se_cmd*)* %19, null
  br i1 %20, label %21, label %48

21:                                               ; preds = %1
  %22 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %23 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %22, i32 0, i32 2
  %24 = load i64 (%struct.se_cmd*)*, i64 (%struct.se_cmd*)** %23, align 8
  %25 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %26 = call i64 %24(%struct.se_cmd* %25)
  store i64 %26, i64* %3, align 8
  %27 = load i64, i64* %3, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %21
  %30 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %31 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %30, i32 0, i32 1
  %32 = call i32 @spin_lock_irq(i32* %31)
  %33 = load i32, i32* @CMD_T_BUSY, align 4
  %34 = load i32, i32* @CMD_T_SENT, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %38 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %42 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %41, i32 0, i32 1
  %43 = call i32 @spin_unlock_irq(i32* %42)
  %44 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %45 = load i64, i64* %3, align 8
  %46 = call i32 @transport_generic_request_failure(%struct.se_cmd* %44, i64 %45)
  br label %47

47:                                               ; preds = %29, %21
  br label %48

48:                                               ; preds = %47, %1
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @transport_generic_request_failure(%struct.se_cmd*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
