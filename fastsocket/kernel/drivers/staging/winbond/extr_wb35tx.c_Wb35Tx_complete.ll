; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35tx.c_Wb35Tx_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35tx.c_Wb35Tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, %struct.wbsoft_priv* }
%struct.wbsoft_priv = type { %struct.wb35_mds, %struct.hw_data }
%struct.wb35_mds = type { i64* }
%struct.hw_data = type { i64, i64, %struct.wb35_tx }
%struct.wb35_tx = type { i64, i64, i8*, i32, i64 }

@.str = private unnamed_addr constant [19 x i8] c"wb35: tx complete\0A\00", align 1
@VM_COMPLETED = common dso_local global i8* null, align 8
@MAX_USB_TX_BUFFER_NUMBER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"URB submission failed\0A\00", align 1
@VM_STOP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @Wb35Tx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Wb35Tx_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.wbsoft_priv*, align 8
  %4 = alloca %struct.hw_data*, align 8
  %5 = alloca %struct.wb35_tx*, align 8
  %6 = alloca %struct.wb35_mds*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %7 = load %struct.urb*, %struct.urb** %2, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 1
  %9 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %8, align 8
  store %struct.wbsoft_priv* %9, %struct.wbsoft_priv** %3, align 8
  %10 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %3, align 8
  %11 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %10, i32 0, i32 1
  store %struct.hw_data* %11, %struct.hw_data** %4, align 8
  %12 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %13 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %12, i32 0, i32 2
  store %struct.wb35_tx* %13, %struct.wb35_tx** %5, align 8
  %14 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %3, align 8
  %15 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %14, i32 0, i32 0
  store %struct.wb35_mds* %15, %struct.wb35_mds** %6, align 8
  %16 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = load i8*, i8** @VM_COMPLETED, align 8
  %18 = load %struct.wb35_tx*, %struct.wb35_tx** %5, align 8
  %19 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load %struct.urb*, %struct.urb** %2, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.wb35_tx*, %struct.wb35_tx** %5, align 8
  %24 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.wb35_mds*, %struct.wb35_mds** %6, align 8
  %26 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load %struct.wb35_tx*, %struct.wb35_tx** %5, align 8
  %29 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i64, i64* %27, i64 %30
  store i64 0, i64* %31, align 8
  %32 = load %struct.wb35_tx*, %struct.wb35_tx** %5, align 8
  %33 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = load i64, i64* @MAX_USB_TX_BUFFER_NUMBER, align 8
  %37 = load %struct.wb35_tx*, %struct.wb35_tx** %5, align 8
  %38 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = urem i64 %39, %36
  store i64 %40, i64* %38, align 8
  %41 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %42 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %1
  %46 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %47 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %1
  br label %72

51:                                               ; preds = %45
  %52 = load %struct.wb35_tx*, %struct.wb35_tx** %5, align 8
  %53 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %72

57:                                               ; preds = %51
  %58 = load %struct.wb35_tx*, %struct.wb35_tx** %5, align 8
  %59 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = call i32 @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i8*, i8** @VM_STOP, align 8
  %65 = load %struct.wb35_tx*, %struct.wb35_tx** %5, align 8
  %66 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  br label %72

67:                                               ; preds = %57
  %68 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %3, align 8
  %69 = call i32 @Mds_Tx(%struct.wbsoft_priv* %68)
  %70 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %3, align 8
  %71 = call i32 @Wb35Tx(%struct.wbsoft_priv* %70)
  br label %79

72:                                               ; preds = %62, %56, %50
  %73 = load %struct.wb35_tx*, %struct.wb35_tx** %5, align 8
  %74 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %73, i32 0, i32 3
  %75 = call i32 @atomic_dec(i32* %74)
  %76 = load i8*, i8** @VM_STOP, align 8
  %77 = load %struct.wb35_tx*, %struct.wb35_tx** %5, align 8
  %78 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %72, %67
  ret void
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @Mds_Tx(%struct.wbsoft_priv*) #1

declare dso_local i32 @Wb35Tx(%struct.wbsoft_priv*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
