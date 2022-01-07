; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_stub_main.c_stub_priv_pop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_stub_main.c_stub_priv_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stub_priv = type { i32 }
%struct.stub_device = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.stub_priv* (%struct.stub_device*)* @stub_priv_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.stub_priv* @stub_priv_pop(%struct.stub_device* %0) #0 {
  %2 = alloca %struct.stub_priv*, align 8
  %3 = alloca %struct.stub_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.stub_priv*, align 8
  store %struct.stub_device* %0, %struct.stub_device** %3, align 8
  %6 = load %struct.stub_device*, %struct.stub_device** %3, align 8
  %7 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %6, i32 0, i32 0
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.stub_device*, %struct.stub_device** %3, align 8
  %11 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %10, i32 0, i32 3
  %12 = call %struct.stub_priv* @stub_priv_pop_from_listhead(i32* %11)
  store %struct.stub_priv* %12, %struct.stub_priv** %5, align 8
  %13 = load %struct.stub_priv*, %struct.stub_priv** %5, align 8
  %14 = icmp ne %struct.stub_priv* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.stub_device*, %struct.stub_device** %3, align 8
  %17 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %16, i32 0, i32 0
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* %17, i64 %18)
  %20 = load %struct.stub_priv*, %struct.stub_priv** %5, align 8
  store %struct.stub_priv* %20, %struct.stub_priv** %2, align 8
  br label %50

21:                                               ; preds = %1
  %22 = load %struct.stub_device*, %struct.stub_device** %3, align 8
  %23 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %22, i32 0, i32 2
  %24 = call %struct.stub_priv* @stub_priv_pop_from_listhead(i32* %23)
  store %struct.stub_priv* %24, %struct.stub_priv** %5, align 8
  %25 = load %struct.stub_priv*, %struct.stub_priv** %5, align 8
  %26 = icmp ne %struct.stub_priv* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.stub_device*, %struct.stub_device** %3, align 8
  %29 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %28, i32 0, i32 0
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load %struct.stub_priv*, %struct.stub_priv** %5, align 8
  store %struct.stub_priv* %32, %struct.stub_priv** %2, align 8
  br label %50

33:                                               ; preds = %21
  %34 = load %struct.stub_device*, %struct.stub_device** %3, align 8
  %35 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %34, i32 0, i32 1
  %36 = call %struct.stub_priv* @stub_priv_pop_from_listhead(i32* %35)
  store %struct.stub_priv* %36, %struct.stub_priv** %5, align 8
  %37 = load %struct.stub_priv*, %struct.stub_priv** %5, align 8
  %38 = icmp ne %struct.stub_priv* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.stub_device*, %struct.stub_device** %3, align 8
  %41 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %40, i32 0, i32 0
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.stub_priv*, %struct.stub_priv** %5, align 8
  store %struct.stub_priv* %44, %struct.stub_priv** %2, align 8
  br label %50

45:                                               ; preds = %33
  %46 = load %struct.stub_device*, %struct.stub_device** %3, align 8
  %47 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %46, i32 0, i32 0
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  store %struct.stub_priv* null, %struct.stub_priv** %2, align 8
  br label %50

50:                                               ; preds = %45, %39, %27, %15
  %51 = load %struct.stub_priv*, %struct.stub_priv** %2, align 8
  ret %struct.stub_priv* %51
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.stub_priv* @stub_priv_pop_from_listhead(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
