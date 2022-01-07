; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35reg.c_Wb35Reg_EP0VM_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35reg.c_Wb35Reg_EP0VM_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, i64 }
%struct.hw_data = type { i32, %struct.wb35_reg }
%struct.wb35_reg = type { i8*, i64, i32, %struct.wb35_reg_queue*, %struct.wb35_reg_queue*, i32 }
%struct.wb35_reg_queue = type { %struct.wb35_reg_queue* }

@VM_COMPLETED = common dso_local global i8* null, align 8
@VM_STOP = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Wb35Reg_EP0VM_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.hw_data*, align 8
  %4 = alloca %struct.wb35_reg*, align 8
  %5 = alloca %struct.wb35_reg_queue*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %6 = load %struct.urb*, %struct.urb** %2, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.hw_data*
  store %struct.hw_data* %9, %struct.hw_data** %3, align 8
  %10 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %11 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %10, i32 0, i32 1
  store %struct.wb35_reg* %11, %struct.wb35_reg** %4, align 8
  %12 = load i8*, i8** @VM_COMPLETED, align 8
  %13 = load %struct.wb35_reg*, %struct.wb35_reg** %4, align 8
  %14 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = load %struct.urb*, %struct.urb** %2, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.wb35_reg*, %struct.wb35_reg** %4, align 8
  %19 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %21 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load i8*, i8** @VM_STOP, align 8
  %26 = load %struct.wb35_reg*, %struct.wb35_reg** %4, align 8
  %27 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.wb35_reg*, %struct.wb35_reg** %4, align 8
  %29 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %28, i32 0, i32 5
  %30 = call i32 @atomic_dec(i32* %29)
  br label %73

31:                                               ; preds = %1
  %32 = load %struct.wb35_reg*, %struct.wb35_reg** %4, align 8
  %33 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %32, i32 0, i32 2
  %34 = call i32 @spin_lock_irq(i32* %33)
  %35 = load %struct.wb35_reg*, %struct.wb35_reg** %4, align 8
  %36 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %35, i32 0, i32 3
  %37 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %36, align 8
  store %struct.wb35_reg_queue* %37, %struct.wb35_reg_queue** %5, align 8
  %38 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %5, align 8
  %39 = load %struct.wb35_reg*, %struct.wb35_reg** %4, align 8
  %40 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %39, i32 0, i32 4
  %41 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %40, align 8
  %42 = icmp eq %struct.wb35_reg_queue* %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %31
  %44 = load %struct.wb35_reg*, %struct.wb35_reg** %4, align 8
  %45 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %44, i32 0, i32 4
  store %struct.wb35_reg_queue* null, %struct.wb35_reg_queue** %45, align 8
  br label %46

46:                                               ; preds = %43, %31
  %47 = load %struct.wb35_reg*, %struct.wb35_reg** %4, align 8
  %48 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %47, i32 0, i32 3
  %49 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %48, align 8
  %50 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %49, i32 0, i32 0
  %51 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %50, align 8
  %52 = load %struct.wb35_reg*, %struct.wb35_reg** %4, align 8
  %53 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %52, i32 0, i32 3
  store %struct.wb35_reg_queue* %51, %struct.wb35_reg_queue** %53, align 8
  %54 = load %struct.wb35_reg*, %struct.wb35_reg** %4, align 8
  %55 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %54, i32 0, i32 2
  %56 = call i32 @spin_unlock_irq(i32* %55)
  %57 = load %struct.wb35_reg*, %struct.wb35_reg** %4, align 8
  %58 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %46
  %62 = load i8*, i8** @VM_STOP, align 8
  %63 = load %struct.wb35_reg*, %struct.wb35_reg** %4, align 8
  %64 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %66 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  br label %70

67:                                               ; preds = %46
  %68 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %69 = call i32 @Wb35Reg_EP0VM(%struct.hw_data* %68)
  br label %70

70:                                               ; preds = %67, %61
  %71 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %5, align 8
  %72 = call i32 @kfree(%struct.wb35_reg_queue* %71)
  br label %73

73:                                               ; preds = %70, %24
  %74 = load %struct.urb*, %struct.urb** %2, align 8
  %75 = call i32 @usb_free_urb(%struct.urb* %74)
  ret void
}

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @Wb35Reg_EP0VM(%struct.hw_data*) #1

declare dso_local i32 @kfree(%struct.wb35_reg_queue*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
