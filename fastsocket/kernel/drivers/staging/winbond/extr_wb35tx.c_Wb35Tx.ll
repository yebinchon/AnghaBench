; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35tx.c_Wb35Tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35tx.c_Wb35Tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbsoft_priv = type { %struct.wb35_mds, %struct.hw_data }
%struct.wb35_mds = type { i64*, i64*, i32* }
%struct.hw_data = type { %struct.TYPE_2__, i64, i64, %struct.wb35_tx }
%struct.TYPE_2__ = type { i32 }
%struct.wb35_tx = type { i64, i32, i32, i32, i32, i32**, i64, i64 }
%struct.urb = type { i32 }

@Wb35Tx_complete = common dso_local global i32 0, align 4
@VM_RUNNING = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"EP4 Tx Irp sending error\0A\00", align 1
@VM_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wbsoft_priv*)* @Wb35Tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Wb35Tx(%struct.wbsoft_priv* %0) #0 {
  %2 = alloca %struct.wbsoft_priv*, align 8
  %3 = alloca %struct.hw_data*, align 8
  %4 = alloca %struct.wb35_tx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.wb35_mds*, align 8
  %7 = alloca %struct.urb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.wbsoft_priv* %0, %struct.wbsoft_priv** %2, align 8
  %10 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %2, align 8
  %11 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %10, i32 0, i32 1
  store %struct.hw_data* %11, %struct.hw_data** %3, align 8
  %12 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %13 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %12, i32 0, i32 3
  store %struct.wb35_tx* %13, %struct.wb35_tx** %4, align 8
  %14 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %2, align 8
  %15 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %14, i32 0, i32 0
  store %struct.wb35_mds* %15, %struct.wb35_mds** %6, align 8
  %16 = load %struct.wb35_tx*, %struct.wb35_tx** %4, align 8
  %17 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %16, i32 0, i32 7
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.urb*
  store %struct.urb* %19, %struct.urb** %7, align 8
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
  br label %118

30:                                               ; preds = %24
  %31 = load %struct.wb35_tx*, %struct.wb35_tx** %4, align 8
  %32 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %118

36:                                               ; preds = %30
  %37 = load %struct.wb35_tx*, %struct.wb35_tx** %4, align 8
  %38 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %9, align 8
  %40 = load %struct.wb35_mds*, %struct.wb35_mds** %6, align 8
  %41 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %36
  br label %118

48:                                               ; preds = %36
  %49 = load %struct.wb35_tx*, %struct.wb35_tx** %4, align 8
  %50 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %49, i32 0, i32 5
  %51 = load i32**, i32*** %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds i32*, i32** %51, i64 %52
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %5, align 8
  %55 = load %struct.urb*, %struct.urb** %7, align 8
  %56 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %57 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %61 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @usb_sndbulkpipe(i32 %63, i32 4)
  %65 = load i32*, i32** %5, align 8
  %66 = load %struct.wb35_mds*, %struct.wb35_mds** %6, align 8
  %67 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @Wb35Tx_complete, align 4
  %73 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %2, align 8
  %74 = call i32 @usb_fill_bulk_urb(%struct.urb* %55, i32 %59, i32 %64, i32* %65, i64 %71, i32 %72, %struct.wbsoft_priv* %73)
  %75 = load i32, i32* @VM_RUNNING, align 4
  %76 = load %struct.wb35_tx*, %struct.wb35_tx** %4, align 8
  %77 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  %78 = load %struct.urb*, %struct.urb** %7, align 8
  %79 = load i32, i32* @GFP_ATOMIC, align 4
  %80 = call i32 @usb_submit_urb(%struct.urb* %78, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %48
  %84 = call i32 @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %118

85:                                               ; preds = %48
  %86 = load %struct.wb35_mds*, %struct.wb35_mds** %6, align 8
  %87 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = load i64, i64* %9, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.wb35_tx*, %struct.wb35_tx** %4, align 8
  %93 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %91
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %93, align 8
  %98 = load %struct.wb35_tx*, %struct.wb35_tx** %4, align 8
  %99 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = icmp sgt i32 %100, 12
  br i1 %101, label %102, label %105

102:                                              ; preds = %85
  %103 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %2, align 8
  %104 = call i32 @Wb35Tx_EP2VM_start(%struct.wbsoft_priv* %103)
  br label %105

105:                                              ; preds = %102, %85
  %106 = load %struct.wb35_mds*, %struct.wb35_mds** %6, align 8
  %107 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = load i64, i64* %9, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.wb35_tx*, %struct.wb35_tx** %4, align 8
  %113 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %111
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %113, align 4
  br label %125

118:                                              ; preds = %83, %47, %35, %29
  %119 = load i32, i32* @VM_STOP, align 4
  %120 = load %struct.wb35_tx*, %struct.wb35_tx** %4, align 8
  %121 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 8
  %122 = load %struct.wb35_tx*, %struct.wb35_tx** %4, align 8
  %123 = getelementptr inbounds %struct.wb35_tx, %struct.wb35_tx* %122, i32 0, i32 2
  %124 = call i32 @atomic_dec(i32* %123)
  br label %125

125:                                              ; preds = %118, %105
  ret void
}

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32*, i64, i32, %struct.wbsoft_priv*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @Wb35Tx_EP2VM_start(%struct.wbsoft_priv*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
