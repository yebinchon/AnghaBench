; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35tx.c_Wb35Tx_EP2VM.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35tx.c_Wb35Tx_EP2VM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbsoft_priv = type { %struct.hw_data }
%struct.hw_data = type { %struct.TYPE_2__, i64, i64, %struct.wb35_tx }
%struct.TYPE_2__ = type { i32 }
%struct.wb35_tx = type { i32, i32, i64, i64, i64 }
%struct.urb = type { i32 }

@MAX_INTERRUPT_LENGTH = common dso_local global i32 0, align 4
@Wb35Tx_EP2VM_complete = common dso_local global i32 0, align 4
@VM_RUNNING = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@VM_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wbsoft_priv*)* @Wb35Tx_EP2VM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Wb35Tx_EP2VM(%struct.wbsoft_priv* %0) #0 {
  %2 = alloca %struct.wbsoft_priv*, align 8
  %3 = alloca %struct.hw_data*, align 8
  %4 = alloca %struct.wb35_tx*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.wbsoft_priv* %0, %struct.wbsoft_priv** %2, align 8
  %8 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %2, align 8
  %9 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %8, i32 0, i32 0
  store %struct.hw_data* %9, %struct.hw_data** %3, align 8
  %10 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %11 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %10, i32 0, i32 3
  store %struct.wb35_tx* %11, %struct.wb35_tx** %4, align 8
  %12 = load %struct.wb35_tx*, %struct.wb35_tx** %4, align 8
  %13 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.urb*
  store %struct.urb* %15, %struct.urb** %5, align 8
  %16 = load %struct.wb35_tx*, %struct.wb35_tx** %4, align 8
  %17 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %6, align 8
  %20 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %21 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %26 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %1
  br label %62

30:                                               ; preds = %24
  %31 = load %struct.wb35_tx*, %struct.wb35_tx** %4, align 8
  %32 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %62

36:                                               ; preds = %30
  %37 = load %struct.urb*, %struct.urb** %5, align 8
  %38 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %39 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %43 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @usb_rcvintpipe(i32 %45, i32 2)
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* @MAX_INTERRUPT_LENGTH, align 4
  %49 = load i32, i32* @Wb35Tx_EP2VM_complete, align 4
  %50 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %2, align 8
  %51 = call i32 @usb_fill_int_urb(%struct.urb* %37, i32 %41, i32 %46, i32* %47, i32 %48, i32 %49, %struct.wbsoft_priv* %50, i32 32)
  %52 = load i32, i32* @VM_RUNNING, align 4
  %53 = load %struct.wb35_tx*, %struct.wb35_tx** %4, align 8
  %54 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.urb*, %struct.urb** %5, align 8
  %56 = load i32, i32* @GFP_ATOMIC, align 4
  %57 = call i32 @usb_submit_urb(%struct.urb* %55, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %36
  br label %62

61:                                               ; preds = %36
  br label %69

62:                                               ; preds = %60, %35, %29
  %63 = load i32, i32* @VM_STOP, align 4
  %64 = load %struct.wb35_tx*, %struct.wb35_tx** %4, align 8
  %65 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.wb35_tx*, %struct.wb35_tx** %4, align 8
  %67 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %66, i32 0, i32 0
  %68 = call i32 @atomic_dec(i32* %67)
  br label %69

69:                                               ; preds = %62, %61
  ret void
}

declare dso_local i32 @usb_fill_int_urb(%struct.urb*, i32, i32, i32*, i32, i32, %struct.wbsoft_priv*, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
