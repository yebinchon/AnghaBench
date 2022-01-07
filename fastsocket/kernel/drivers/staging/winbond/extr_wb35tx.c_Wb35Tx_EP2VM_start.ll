; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35tx.c_Wb35Tx_EP2VM_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35tx.c_Wb35Tx_EP2VM_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbsoft_priv = type { %struct.hw_data }
%struct.hw_data = type { %struct.wb35_tx }
%struct.wb35_tx = type { i32, i32 }

@VM_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Wb35Tx_EP2VM_start(%struct.wbsoft_priv* %0) #0 {
  %2 = alloca %struct.wbsoft_priv*, align 8
  %3 = alloca %struct.hw_data*, align 8
  %4 = alloca %struct.wb35_tx*, align 8
  store %struct.wbsoft_priv* %0, %struct.wbsoft_priv** %2, align 8
  %5 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %2, align 8
  %6 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %5, i32 0, i32 0
  store %struct.hw_data* %6, %struct.hw_data** %3, align 8
  %7 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %8 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %7, i32 0, i32 0
  store %struct.wb35_tx* %8, %struct.wb35_tx** %4, align 8
  %9 = load %struct.wb35_tx*, %struct.wb35_tx** %4, align 8
  %10 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %9, i32 0, i32 0
  %11 = call i32 @atomic_inc_return(i32* %10)
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load i32, i32* @VM_RUNNING, align 4
  %15 = load %struct.wb35_tx*, %struct.wb35_tx** %4, align 8
  %16 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %2, align 8
  %18 = call i32 @Wb35Tx_EP2VM(%struct.wbsoft_priv* %17)
  br label %23

19:                                               ; preds = %1
  %20 = load %struct.wb35_tx*, %struct.wb35_tx** %4, align 8
  %21 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %20, i32 0, i32 0
  %22 = call i32 @atomic_dec(i32* %21)
  br label %23

23:                                               ; preds = %19, %13
  ret void
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @Wb35Tx_EP2VM(%struct.wbsoft_priv*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
