; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_phonedev.c_phone_unregister_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_phonedev.c_phone_unregister_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phone_device = type { i64 }

@phone_lock = common dso_local global i32 0, align 4
@phone_device = common dso_local global %struct.phone_device** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @phone_unregister_device(%struct.phone_device* %0) #0 {
  %2 = alloca %struct.phone_device*, align 8
  store %struct.phone_device* %0, %struct.phone_device** %2, align 8
  %3 = call i32 @mutex_lock(i32* @phone_lock)
  %4 = load %struct.phone_device**, %struct.phone_device*** @phone_device, align 8
  %5 = load %struct.phone_device*, %struct.phone_device** %2, align 8
  %6 = getelementptr inbounds %struct.phone_device, %struct.phone_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.phone_device*, %struct.phone_device** %4, i64 %7
  %9 = load %struct.phone_device*, %struct.phone_device** %8, align 8
  %10 = load %struct.phone_device*, %struct.phone_device** %2, align 8
  %11 = icmp eq %struct.phone_device* %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @likely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.phone_device**, %struct.phone_device*** @phone_device, align 8
  %17 = load %struct.phone_device*, %struct.phone_device** %2, align 8
  %18 = getelementptr inbounds %struct.phone_device, %struct.phone_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.phone_device*, %struct.phone_device** %16, i64 %19
  store %struct.phone_device* null, %struct.phone_device** %20, align 8
  br label %21

21:                                               ; preds = %15, %1
  %22 = call i32 @mutex_unlock(i32* @phone_lock)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
