; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35reg.c_Wb35Reg_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35reg.c_Wb35Reg_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { %struct.wb35_reg }
%struct.wb35_reg = type { i64, i32, %struct.wb35_reg_queue*, %struct.wb35_reg_queue* }
%struct.wb35_reg_queue = type { %struct.urb*, %struct.wb35_reg_queue* }
%struct.urb = type { i32 }

@VM_STOP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Wb35Reg_destroy(%struct.hw_data* %0) #0 {
  %2 = alloca %struct.hw_data*, align 8
  %3 = alloca %struct.wb35_reg*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.wb35_reg_queue*, align 8
  store %struct.hw_data* %0, %struct.hw_data** %2, align 8
  %6 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %7 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %6, i32 0, i32 0
  store %struct.wb35_reg* %7, %struct.wb35_reg** %3, align 8
  %8 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %9 = call i32 @Uxx_power_off_procedure(%struct.hw_data* %8)
  br label %10

10:                                               ; preds = %12, %1
  %11 = call i32 @msleep(i32 10)
  br label %12

12:                                               ; preds = %10
  %13 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %14 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VM_STOP, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %10, label %18

18:                                               ; preds = %12
  %19 = call i32 @msleep(i32 10)
  %20 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %21 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %20, i32 0, i32 1
  %22 = call i32 @spin_lock_irq(i32* %21)
  %23 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %24 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %23, i32 0, i32 2
  %25 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %24, align 8
  store %struct.wb35_reg_queue* %25, %struct.wb35_reg_queue** %5, align 8
  br label %26

26:                                               ; preds = %60, %18
  %27 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %5, align 8
  %28 = icmp ne %struct.wb35_reg_queue* %27, null
  br i1 %28, label %29, label %67

29:                                               ; preds = %26
  %30 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %5, align 8
  %31 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %32 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %31, i32 0, i32 3
  %33 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %32, align 8
  %34 = icmp eq %struct.wb35_reg_queue* %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %37 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %36, i32 0, i32 3
  store %struct.wb35_reg_queue* null, %struct.wb35_reg_queue** %37, align 8
  br label %38

38:                                               ; preds = %35, %29
  %39 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %40 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %39, i32 0, i32 2
  %41 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %40, align 8
  %42 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %41, i32 0, i32 1
  %43 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %42, align 8
  %44 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %45 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %44, i32 0, i32 2
  store %struct.wb35_reg_queue* %43, %struct.wb35_reg_queue** %45, align 8
  %46 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %5, align 8
  %47 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %46, i32 0, i32 0
  %48 = load %struct.urb*, %struct.urb** %47, align 8
  store %struct.urb* %48, %struct.urb** %4, align 8
  %49 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %50 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %49, i32 0, i32 1
  %51 = call i32 @spin_unlock_irq(i32* %50)
  %52 = load %struct.urb*, %struct.urb** %4, align 8
  %53 = icmp ne %struct.urb* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %38
  %55 = load %struct.urb*, %struct.urb** %4, align 8
  %56 = call i32 @usb_free_urb(%struct.urb* %55)
  %57 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %5, align 8
  %58 = call i32 @kfree(%struct.wb35_reg_queue* %57)
  br label %60

59:                                               ; preds = %38
  br label %60

60:                                               ; preds = %59, %54
  %61 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %62 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %61, i32 0, i32 1
  %63 = call i32 @spin_lock_irq(i32* %62)
  %64 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %65 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %64, i32 0, i32 2
  %66 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %65, align 8
  store %struct.wb35_reg_queue* %66, %struct.wb35_reg_queue** %5, align 8
  br label %26

67:                                               ; preds = %26
  %68 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %69 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %68, i32 0, i32 1
  %70 = call i32 @spin_unlock_irq(i32* %69)
  ret void
}

declare dso_local i32 @Uxx_power_off_procedure(%struct.hw_data*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @kfree(%struct.wb35_reg_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
