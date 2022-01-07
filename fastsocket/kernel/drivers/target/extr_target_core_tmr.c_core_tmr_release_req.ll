; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_tmr.c_core_tmr_release_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_tmr.c_core_tmr_release_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_tmr_req = type { i32, %struct.se_device* }
%struct.se_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @core_tmr_release_req(%struct.se_tmr_req* %0) #0 {
  %2 = alloca %struct.se_tmr_req*, align 8
  %3 = alloca %struct.se_device*, align 8
  %4 = alloca i64, align 8
  store %struct.se_tmr_req* %0, %struct.se_tmr_req** %2, align 8
  %5 = load %struct.se_tmr_req*, %struct.se_tmr_req** %2, align 8
  %6 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %5, i32 0, i32 1
  %7 = load %struct.se_device*, %struct.se_device** %6, align 8
  store %struct.se_device* %7, %struct.se_device** %3, align 8
  %8 = load %struct.se_device*, %struct.se_device** %3, align 8
  %9 = icmp ne %struct.se_device* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.se_tmr_req*, %struct.se_tmr_req** %2, align 8
  %12 = call i32 @kfree(%struct.se_tmr_req* %11)
  br label %27

13:                                               ; preds = %1
  %14 = load %struct.se_device*, %struct.se_device** %3, align 8
  %15 = getelementptr inbounds %struct.se_device, %struct.se_device* %14, i32 0, i32 0
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.se_tmr_req*, %struct.se_tmr_req** %2, align 8
  %19 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %18, i32 0, i32 0
  %20 = call i32 @list_del(i32* %19)
  %21 = load %struct.se_device*, %struct.se_device** %3, align 8
  %22 = getelementptr inbounds %struct.se_device, %struct.se_device* %21, i32 0, i32 0
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load %struct.se_tmr_req*, %struct.se_tmr_req** %2, align 8
  %26 = call i32 @kfree(%struct.se_tmr_req* %25)
  br label %27

27:                                               ; preds = %13, %10
  ret void
}

declare dso_local i32 @kfree(%struct.se_tmr_req*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
