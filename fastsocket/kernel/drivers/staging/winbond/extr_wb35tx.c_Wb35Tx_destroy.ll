; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35tx.c_Wb35Tx_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35tx.c_Wb35Tx_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { %struct.wb35_tx }
%struct.wb35_tx = type { i64, i64, i64, i64 }

@VM_STOP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Wb35Tx_destroy(%struct.hw_data* %0) #0 {
  %2 = alloca %struct.hw_data*, align 8
  %3 = alloca %struct.wb35_tx*, align 8
  store %struct.hw_data* %0, %struct.hw_data** %2, align 8
  %4 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %5 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %4, i32 0, i32 0
  store %struct.wb35_tx* %5, %struct.wb35_tx** %3, align 8
  br label %6

6:                                                ; preds = %20, %1
  %7 = call i32 @msleep(i32 10)
  br label %8

8:                                                ; preds = %6
  %9 = load %struct.wb35_tx*, %struct.wb35_tx** %3, align 8
  %10 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @VM_STOP, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load %struct.wb35_tx*, %struct.wb35_tx** %3, align 8
  %16 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VM_STOP, align 8
  %19 = icmp ne i64 %17, %18
  br label %20

20:                                               ; preds = %14, %8
  %21 = phi i1 [ false, %8 ], [ %19, %14 ]
  br i1 %21, label %6, label %22

22:                                               ; preds = %20
  %23 = call i32 @msleep(i32 10)
  %24 = load %struct.wb35_tx*, %struct.wb35_tx** %3, align 8
  %25 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.wb35_tx*, %struct.wb35_tx** %3, align 8
  %30 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @usb_free_urb(i64 %31)
  br label %33

33:                                               ; preds = %28, %22
  %34 = load %struct.wb35_tx*, %struct.wb35_tx** %3, align 8
  %35 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.wb35_tx*, %struct.wb35_tx** %3, align 8
  %40 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @usb_free_urb(i64 %41)
  br label %43

43:                                               ; preds = %38, %33
  ret void
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usb_free_urb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
