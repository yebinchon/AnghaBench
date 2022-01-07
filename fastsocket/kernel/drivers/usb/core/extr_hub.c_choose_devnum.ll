; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_choose_devnum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_choose_devnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, i32, i64, %struct.usb_bus* }
%struct.usb_bus = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*)* @choose_devnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @choose_devnum(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_bus*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  %5 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %6 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %5, i32 0, i32 3
  %7 = load %struct.usb_bus*, %struct.usb_bus** %6, align 8
  store %struct.usb_bus* %7, %struct.usb_bus** %4, align 8
  %8 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %9 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %19 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @test_bit(i32 %17, i32 %21)
  %23 = call i32 @BUG_ON(i32 %22)
  br label %52

24:                                               ; preds = %1
  %25 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %26 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %30 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @find_next_zero_bit(i32 %28, i32 128, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp sge i32 %33, 128
  br i1 %34, label %35, label %41

35:                                               ; preds = %24
  %36 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %37 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @find_next_zero_bit(i32 %39, i32 128, i32 1)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %35, %24
  %42 = load i32, i32* %3, align 4
  %43 = icmp sge i32 %42, 127
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  br label %48

48:                                               ; preds = %45, %44
  %49 = phi i32 [ 1, %44 ], [ %47, %45 ]
  %50 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %51 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %12
  %53 = load i32, i32* %3, align 4
  %54 = icmp slt i32 %53, 128
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load i32, i32* %3, align 4
  %57 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %58 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @set_bit(i32 %56, i32 %60)
  %62 = load i32, i32* %3, align 4
  %63 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %64 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %55, %52
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @find_next_zero_bit(i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
