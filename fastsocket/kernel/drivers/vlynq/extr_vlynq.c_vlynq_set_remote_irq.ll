; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/vlynq/extr_vlynq.c_vlynq_set_remote_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/vlynq/extr_vlynq.c_vlynq_set_remote_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlynq_device = type { i32, i32, i32, i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlynq_set_remote_irq(%struct.vlynq_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vlynq_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vlynq_device* %0, %struct.vlynq_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.vlynq_device*, %struct.vlynq_device** %4, align 8
  %8 = getelementptr inbounds %struct.vlynq_device, %struct.vlynq_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.vlynq_device*, %struct.vlynq_device** %4, align 8
  %13 = getelementptr inbounds %struct.vlynq_device, %struct.vlynq_device* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %47

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.vlynq_device*, %struct.vlynq_device** %4, align 8
  %22 = getelementptr inbounds %struct.vlynq_device, %struct.vlynq_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.vlynq_device*, %struct.vlynq_device** %4, align 8
  %28 = getelementptr inbounds %struct.vlynq_device, %struct.vlynq_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25, %19
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %47

34:                                               ; preds = %25
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.vlynq_device*, %struct.vlynq_device** %4, align 8
  %37 = getelementptr inbounds %struct.vlynq_device, %struct.vlynq_device* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %47

43:                                               ; preds = %34
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.vlynq_device*, %struct.vlynq_device** %4, align 8
  %46 = getelementptr inbounds %struct.vlynq_device, %struct.vlynq_device* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %40, %31, %16
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
