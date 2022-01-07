; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35tx.c_Wb35Tx_CurrentTime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35tx.c_Wb35Tx_CurrentTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbsoft_priv = type { %struct.hw_data }
%struct.hw_data = type { %struct.wb35_tx }
%struct.wb35_tx = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Wb35Tx_CurrentTime(%struct.wbsoft_priv* %0, i64 %1) #0 {
  %3 = alloca %struct.wbsoft_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hw_data*, align 8
  %6 = alloca %struct.wb35_tx*, align 8
  %7 = alloca i8, align 1
  store %struct.wbsoft_priv* %0, %struct.wbsoft_priv** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %3, align 8
  %9 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %8, i32 0, i32 0
  store %struct.hw_data* %9, %struct.hw_data** %5, align 8
  %10 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %11 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %10, i32 0, i32 0
  store %struct.wb35_tx* %11, %struct.wb35_tx** %6, align 8
  store i8 0, i8* %7, align 1
  %12 = load %struct.wb35_tx*, %struct.wb35_tx** %6, align 8
  %13 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i8 1, i8* %7, align 1
  br label %27

18:                                               ; preds = %2
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.wb35_tx*, %struct.wb35_tx** %6, align 8
  %21 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 500
  %24 = icmp sgt i64 %19, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i8 1, i8* %7, align 1
  br label %26

26:                                               ; preds = %25, %18
  br label %27

27:                                               ; preds = %26, %17
  %28 = load i8, i8* %7, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.wb35_tx*, %struct.wb35_tx** %6, align 8
  %33 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %3, align 8
  %35 = call i32 @Wb35Tx_EP2VM_start(%struct.wbsoft_priv* %34)
  br label %36

36:                                               ; preds = %30, %27
  ret void
}

declare dso_local i32 @Wb35Tx_EP2VM_start(%struct.wbsoft_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
