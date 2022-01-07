; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_devconnect.c_wusbhc_devconnect_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_devconnect.c_wusbhc_devconnect_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32, %struct.TYPE_3__*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wusbhc_devconnect_stop(%struct.wusbhc* %0) #0 {
  %2 = alloca %struct.wusbhc*, align 8
  %3 = alloca i32, align 4
  store %struct.wusbhc* %0, %struct.wusbhc** %2, align 8
  %4 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %5 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %4, i32 0, i32 3
  %6 = call i32 @mutex_lock(i32* %5)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %33, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %10 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %7
  %14 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %15 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %14, i32 0, i32 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %13
  %24 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %25 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %26 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %25, i32 0, i32 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = call i32 @__wusbhc_dev_disconnect(%struct.wusbhc* %24, %struct.TYPE_4__* %30)
  br label %32

32:                                               ; preds = %23, %13
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %7

36:                                               ; preds = %7
  %37 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %38 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %37, i32 0, i32 3
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %41 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %40, i32 0, i32 2
  %42 = call i32 @cancel_delayed_work_sync(i32* %41)
  %43 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %44 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %45 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i32 @wusbhc_mmcie_rm(%struct.wusbhc* %43, i32* %47)
  %49 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %50 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = call i32 @kfree(%struct.TYPE_3__* %51)
  %53 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %54 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %53, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %54, align 8
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__wusbhc_dev_disconnect(%struct.wusbhc*, %struct.TYPE_4__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @wusbhc_mmcie_rm(%struct.wusbhc*, i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
