; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/6fire/extr_control.c_usb6fire_control_output_vol_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/6fire/extr_control.c_usb6fire_control_output_vol_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.control_runtime = type { i32, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comm_runtime* }
%struct.comm_runtime = type { i32 (%struct.comm_runtime*, i32, i32, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.control_runtime*)* @usb6fire_control_output_vol_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb6fire_control_output_vol_update(%struct.control_runtime* %0) #0 {
  %2 = alloca %struct.control_runtime*, align 8
  %3 = alloca %struct.comm_runtime*, align 8
  %4 = alloca i32, align 4
  store %struct.control_runtime* %0, %struct.control_runtime** %2, align 8
  %5 = load %struct.control_runtime*, %struct.control_runtime** %2, align 8
  %6 = getelementptr inbounds %struct.control_runtime, %struct.control_runtime* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.comm_runtime*, %struct.comm_runtime** %8, align 8
  store %struct.comm_runtime* %9, %struct.comm_runtime** %3, align 8
  %10 = load %struct.comm_runtime*, %struct.comm_runtime** %3, align 8
  %11 = icmp ne %struct.comm_runtime* %10, null
  br i1 %11, label %12, label %51

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %47, %12
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 6
  br i1 %15, label %16, label %50

16:                                               ; preds = %13
  %17 = load %struct.control_runtime*, %struct.control_runtime** %2, align 8
  %18 = getelementptr inbounds %struct.control_runtime, %struct.control_runtime* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %46, label %24

24:                                               ; preds = %16
  %25 = load %struct.comm_runtime*, %struct.comm_runtime** %3, align 8
  %26 = getelementptr inbounds %struct.comm_runtime, %struct.comm_runtime* %25, i32 0, i32 0
  %27 = load i32 (%struct.comm_runtime*, i32, i32, i64)*, i32 (%struct.comm_runtime*, i32, i32, i64)** %26, align 8
  %28 = load %struct.comm_runtime*, %struct.comm_runtime** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 15, %29
  %31 = load %struct.control_runtime*, %struct.control_runtime** %2, align 8
  %32 = getelementptr inbounds %struct.control_runtime, %struct.control_runtime* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 180, %37
  %39 = call i32 %27(%struct.comm_runtime* %28, i32 18, i32 %30, i64 %38)
  %40 = load i32, i32* %4, align 4
  %41 = shl i32 1, %40
  %42 = load %struct.control_runtime*, %struct.control_runtime** %2, align 8
  %43 = getelementptr inbounds %struct.control_runtime, %struct.control_runtime* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %24, %16
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %13

50:                                               ; preds = %13
  br label %51

51:                                               ; preds = %50, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
