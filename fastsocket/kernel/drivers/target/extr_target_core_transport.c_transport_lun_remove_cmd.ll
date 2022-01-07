; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_lun_remove_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_lun_remove_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i32, i32, %struct.se_lun* }
%struct.se_lun = type { i32 }

@CMD_T_DEV_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_cmd*)* @transport_lun_remove_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transport_lun_remove_cmd(%struct.se_cmd* %0) #0 {
  %2 = alloca %struct.se_cmd*, align 8
  %3 = alloca %struct.se_lun*, align 8
  %4 = alloca i64, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %2, align 8
  %5 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %6 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %5, i32 0, i32 3
  %7 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  store %struct.se_lun* %7, %struct.se_lun** %3, align 8
  %8 = load %struct.se_lun*, %struct.se_lun** %3, align 8
  %9 = icmp ne %struct.se_lun* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %53

11:                                               ; preds = %1
  %12 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %13 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %12, i32 0, i32 2
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %17 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CMD_T_DEV_ACTIVE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %11
  %23 = load i32, i32* @CMD_T_DEV_ACTIVE, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %26 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %30 = call i32 @target_remove_from_state_list(%struct.se_cmd* %29)
  br label %31

31:                                               ; preds = %22, %11
  %32 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %33 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %32, i32 0, i32 2
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.se_lun*, %struct.se_lun** %3, align 8
  %37 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %36, i32 0, i32 0
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %41 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %40, i32 0, i32 1
  %42 = call i32 @list_empty(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %31
  %45 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %46 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %45, i32 0, i32 1
  %47 = call i32 @list_del_init(i32* %46)
  br label %48

48:                                               ; preds = %44, %31
  %49 = load %struct.se_lun*, %struct.se_lun** %3, align 8
  %50 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %49, i32 0, i32 0
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  br label %53

53:                                               ; preds = %48, %10
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @target_remove_from_state_list(%struct.se_cmd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
