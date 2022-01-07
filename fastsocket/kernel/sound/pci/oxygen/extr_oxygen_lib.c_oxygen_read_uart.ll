; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_oxygen_lib.c_oxygen_read_uart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_oxygen_lib.c_oxygen_read_uart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i64, %struct.TYPE_2__, i64* }
%struct.TYPE_2__ = type { i32 (%struct.oxygen.0*)* }
%struct.oxygen.0 = type opaque

@OXYGEN_MPU401 = common dso_local global i32 0, align 4
@MPU401_ACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @oxygen_read_uart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oxygen_read_uart(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca i64, align 8
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %4 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %5 = call i64 @oxygen_uart_input_ready(%struct.oxygen* %4)
  %6 = icmp ne i64 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %13 = load i32, i32* @OXYGEN_MPU401, align 4
  %14 = call i64 @oxygen_read8(%struct.oxygen* %12, i32 %13)
  br label %64

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %46, %15
  %17 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %18 = load i32, i32* @OXYGEN_MPU401, align 4
  %19 = call i64 @oxygen_read8(%struct.oxygen* %17, i32 %18)
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @MPU401_ACK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %46

24:                                               ; preds = %16
  %25 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %26 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %29 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  %31 = call i64 @ARRAY_SIZE(i64* %30)
  %32 = icmp sge i64 %27, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %35 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %33, %24
  %37 = load i64, i64* %3, align 8
  %38 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %39 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %38, i32 0, i32 2
  %40 = load i64*, i64** %39, align 8
  %41 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %42 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  %45 = getelementptr inbounds i64, i64* %40, i64 %43
  store i64 %37, i64* %45, align 8
  br label %46

46:                                               ; preds = %36, %23
  %47 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %48 = call i64 @oxygen_uart_input_ready(%struct.oxygen* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %16, label %50

50:                                               ; preds = %46
  %51 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %52 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (%struct.oxygen.0*)*, i32 (%struct.oxygen.0*)** %53, align 8
  %55 = icmp ne i32 (%struct.oxygen.0*)* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %58 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32 (%struct.oxygen.0*)*, i32 (%struct.oxygen.0*)** %59, align 8
  %61 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %62 = bitcast %struct.oxygen* %61 to %struct.oxygen.0*
  %63 = call i32 %60(%struct.oxygen.0* %62)
  br label %64

64:                                               ; preds = %11, %56, %50
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @oxygen_uart_input_ready(%struct.oxygen*) #1

declare dso_local i64 @oxygen_read8(%struct.oxygen*, i32) #1

declare dso_local i64 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
