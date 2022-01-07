; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rfkill/extr_core.c_rfkill_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rfkill/extr_core.c_rfkill_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfkill = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@rfkill_global_mutex = common dso_local global i32 0, align 4
@RFKILL_OP_DEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rfkill_unregister(%struct.rfkill* %0) #0 {
  %2 = alloca %struct.rfkill*, align 8
  store %struct.rfkill* %0, %struct.rfkill** %2, align 8
  %3 = load %struct.rfkill*, %struct.rfkill** %2, align 8
  %4 = icmp ne %struct.rfkill* %3, null
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i32
  %7 = call i32 @BUG_ON(i32 %6)
  %8 = load %struct.rfkill*, %struct.rfkill** %2, align 8
  %9 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %8, i32 0, i32 6
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.rfkill*, %struct.rfkill** %2, align 8
  %16 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %15, i32 0, i32 5
  %17 = call i32 @cancel_delayed_work_sync(i32* %16)
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.rfkill*, %struct.rfkill** %2, align 8
  %20 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %19, i32 0, i32 4
  %21 = call i32 @cancel_work_sync(i32* %20)
  %22 = load %struct.rfkill*, %struct.rfkill** %2, align 8
  %23 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %22, i32 0, i32 3
  %24 = call i32 @cancel_work_sync(i32* %23)
  %25 = load %struct.rfkill*, %struct.rfkill** %2, align 8
  %26 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.rfkill*, %struct.rfkill** %2, align 8
  %28 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %27, i32 0, i32 2
  %29 = call i32 @device_del(i32* %28)
  %30 = call i32 @mutex_lock(i32* @rfkill_global_mutex)
  %31 = load %struct.rfkill*, %struct.rfkill** %2, align 8
  %32 = load i32, i32* @RFKILL_OP_DEL, align 4
  %33 = call i32 @rfkill_send_events(%struct.rfkill* %31, i32 %32)
  %34 = load %struct.rfkill*, %struct.rfkill** %2, align 8
  %35 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %34, i32 0, i32 1
  %36 = call i32 @list_del_init(i32* %35)
  %37 = call i32 @mutex_unlock(i32* @rfkill_global_mutex)
  %38 = load %struct.rfkill*, %struct.rfkill** %2, align 8
  %39 = call i32 @rfkill_led_trigger_unregister(%struct.rfkill* %38)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rfkill_send_events(%struct.rfkill*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rfkill_led_trigger_unregister(%struct.rfkill*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
